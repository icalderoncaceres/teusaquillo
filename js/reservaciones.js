var monto=0,adiciones=0,sustracciones=0,total=0;
$(document).ready(function(){
	$("#btn-generar").click(function(e){
		e.preventDefault();
		let enc=false;
		$(".requerido").each(function(index){
			if($(this).val()==""){
				enc=true;
				if(!$(this).hasClass("border-red"))
					$(this).addClass("border-red");
			}else{
				if($(this).hasClass("border-red"))
					$(this).removeClass("border-red");				
			}
		});
		/*
		if(enc){
			alert("Por favor llene todos los campos");
			return;
		}
			
		*/
		
		//Si pasa las validaciones
		let clave=$("#select-tipo-reservacion").val() + $("#select-inv-reservacion").val() + $("#select-alt-reservacion").val() + $("#select-salon-reservacion").val();
		$.ajax({
			url:'views/presupuesto-table.php',
			data:{
				clave:clave,
				rt:$("#select-tipo-reservacion").val(),
				ri:$("#select-inv-reservacion").val(),
				ra:$("#select-alt-reservacion").val(),
				rs:$("#select-salon-reservacion").val()
			},
			type:'POST',
			datatType:'HTML',
			success:function(data){
				$("div#container-presupuesto").html(data);	
				$("#btn-generar").addClass("disabled");
				$("#btn-guardar").removeClass("disabled");
			},
			error:function(xhr){
				alert(xhr);
			}
		});
	});
	
	$("#btn-guardar").click(function(e){
		e.preventDefault();
		r=confirm("¿Esta seguro de guardar los cambios a la reservación?");
		if(r){
			$(this).addClass("disabled");
			let formulario=$("#form-nueva-reservacion").serialize() + "&metodo=save&monto=" + monto + "&adiciones=" + adiciones + "&sustracciones=" + sustracciones + "&total=" + total;
			$.ajax({
				url:'fcn/reservaciones.php',
				data:formulario,
				type:'POST',
				dataType:'json',
				success:function(data){
					if(data.code==200){
						var id=data.id;
						//Ciclo para cargar los valores de la tabla
						let filas=$("#lista-items tbody>tr");
						
						filas.each(function(index,value){							
							if(index>0){
								let f1=$(this).find('th:nth(0)').html();
								let f2=$(this).find('td:nth(0)').html();
								let f3=$(this).find('td:nth(1)').html();
								let f4=$(this).find('td:nth(2)').html();
								let f5=$(this).find('td:nth(3)').html();
								$.ajax({
									url:'fcn/reservaciones.php',
									data:{id:id,f1:f1,f2:f2,f3:f3,f4:f4,f5:f5,metodo:'saveDetail'},
									type:'POST',
									dataType:'json',
									success:function(data){
										console.log(data);
										if(index==(filas.length-1)){
											location.href="http://localhost/teusaquillo-front/editarReservacion.php?id=" + id;
										}
									},
									error:function(xhr){
										console.log(xhr);
									}
								});								
							}
						});						
					}
				},
				error:function(xhr){
					console.log(xhr);
				}
			});
		}
	});
	
	$("#btn-limpiar").click(function(e){
		e.preventDefault();
		r=confirm("¿Esta seguro que desea limpiar, no podra recuperar los cambios que no se han guardardo");
		if(r){
			$("#btn-generar").removeClass("disabled");
			$("#btn-guardar").addClass("disabled");
			$("div#container-presupuesto").html('');
			$("select.requerido").val("");
		}
	});
	
	$("#btn-recalcular").click(function(e){
		
		e.preventDefault();		
	});
	
	$("#btn-actualizar").click(function(e){
		e.preventDefault();
	})
	
	$(document).on("click",".input-actualizar",function(e){
		
		let unidad=1;
		/*
		if($(this).data("unidad")==1){
			unidad=prompt("¿Cuántas unidades?");
			if(!unidad){
				return;
			}
		}
		*/		
		if($(this).attr("data-less")==-1){
			let valor=prompt("Ingrese el monto del descuento de este item");
			let id=$(this).data("id");
			if(valor){
				$(this).attr("data-less",parseFloat(valor));
				$(".consultar[data-id=" + id + "]").text(numberFormat(parseFloat(valor * unidad)));
			}else{
				return;
			}
		}		
		calcular();
	});
	
	$(document).on("click",".consultar",function(e){
		e.preventDefault();
		let valor=prompt("Ingrese el valor de descuento de este item");
		if(valor){
			let id=$(this).data("id");
			$(this).text(numberFormat(parseFloat(valor)));
			$(".input-actualizar[data-id=" + id + "]").attr("data-less",parseFloat(valor));
		}
	});
	
	$(document).on("click","#btn-agregar",function(e){
		e.preventDefault();
		if($("#select-items").val()<=0){
			alert("Debes seleccionar el item que deseas agregar");
			return;
		}
		let elem=$("#select-items option:selected");
		let numero=$("tbody#items-adicionales>tr").length + 1;
		let valor=elem.attr("data-more");
		if(valor==-1){
			let r=prompt("¿Ingrese el valor de este item?");
			if(r){
				valor=parseFloat(r);
			}else{
				return;
			}
		}
		let nuevaFila='<tr data-more=' + valor + '>';
		nuevaFila+='<td><a class="btn btn-sm btn-danger remove-item">X</a></td>';
		nuevaFila+='<th>' + numero + '</th>';
		nuevaFila+='<td class="hidden">' + $("#select-items").val() + '</td>';
		nuevaFila+='<td>' + $("#select-items option:selected").text() + '</td>';
		nuevaFila+='<td class="text-right">' + numberFormat(valor) + '</td></tr>';
				
		$("tbody#items-adicionales").append(nuevaFila);		
		calcular();
		elem.remove();
	});
	
	$(document).on("click",".remove-item",function(e){
		e.preventDefault();
		let elem=$(this).parent().parent();
		let more=elem.attr("data-more");
		let valor=elem.find("td:nth(1)").text();
		let item=elem.find("td:nth(2)").text();
		elem.remove();
		$("#select-items").append('<option data-more=' + more + ' value=' + valor + '>' + item + '</option>');
		calcular();		
	});
	
	$(document).on("click",".actualizar-plan",function(e){
		e.preventDefault();
		let valor=prompt("Ingrese el nuevo valor de este plan");		
		if(valor){
			let clave=$(this).data("clave");
			$.ajax({
				url:"fcn/reservaciones.php",
				data:{metodo:'updatePlan',clave:clave,monto:parseFloat(valor)},
				type:"POST",
				dataType:"json",
				success:function(data){
					if(data.code==200){
						document.location.reload();	
					}else{
						alert("No pudó actualizar");
					}				
				},
				error:function(xhr){
					console.log(xhr);
				}
			});
		}
	});
});

function addSelect(){
	$("span.items-not").each(function(e,index){
		let item=$(this).text();
		let more=$(this).data("more");
		$("#select-items").append('<option data-more=' + more + ' value=' + $(this).attr('data-id') + '>' + item + '</option>');
	});
	$("span.items-not").remove();
}

function iniciar(monto1,adiciones1=0,sustracciones1=0){
	monto=monto1;
	total=monto1;
	adiciones=adiciones1;
	sustracciones=sustracciones1;
}

function calcular(){	
	sustracciones=0;adiciones=0;
	$("tbody#items-plan>tr input[type='checkbox']").each(function(e,i){
		if(!$(this).is(":checked")){
			sustracciones+=parseFloat($(this).data("less"));
		}
	});
	
	$("tbody#items-adicionales>tr").each(function(e,i){
		adiciones+=parseFloat($(this).data("more"));
	});

	total=monto-sustracciones+adiciones;
	$("#span-retiros").text(numberFormat(sustracciones));
	$("#span-adiciones").text(numberFormat(adiciones));
	$("#span-total").text(numberFormat(total));	
}

function numberFormat(num){
	var cadena = ""; var aux;
	var cont = 1,m,k;
	if(num<0) aux=1; else aux=0;
	num=num.toString();
	for(m=num.length-1; m>=0; m--){
	 cadena = num.charAt(m) + cadena;
	 if(cont%3 == 0 && m >aux)  cadena = "." + cadena; else cadena = cadena;
	 if(cont== 3) cont = 1; else cont++;
	}
	cadena = cadena.replace(/.,/,",");
	return cadena;
}