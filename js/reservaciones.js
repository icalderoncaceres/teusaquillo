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
		if(enc)
			return;
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
			},
			error:function(xhr){
				alert(xhr);
			}
		});
	});
	
	$(document).on("click",".input-actualizar",function(e){
		if($(this).attr("data-less")==-1){
			let valor=prompt("Ingrese el monto del descuento de este item");
			let id=$(this).data("id");
			if(valor){
				$(this).attr("data-less",parseFloat(valor));
				$(".consultar[data-id=" + id + "]").text(numberFormat(parseFloat(valor)));
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
		let nuevaFila='<tr data-more=' + valor + '>';
		nuevaFila+='<td><a class="btn btn-sm btn-danger remove-item">X</a></td>';		
		nuevaFila+='<th>' + numero + '</th>';
		nuevaFila+='<td>' + $("#select-items").val() + '</td>';
		nuevaFila+='<td class="text-right">' + numberFormat(valor) + '</td></tr>';
				
		$("tbody#items-adicionales").append(nuevaFila);		
		calcular();
		elem.remove();
	});
	
	$(document).on("click",".remove-item",function(e){
		e.preventDefault();
		let elem=$(this).parent().parent();
		let more=elem.attr("data-more");
		let item=elem.find("td:nth(1)").text();
		elem.remove();
		$("#select-items").append('<option data-more=' + more + '>' + item + '</option>');
		calcular();		
	});
});

function addSelect(){
	$("span.items-not").each(function(e,index){
		let item=$(this).text();
		let more=$(this).data("more");
		$("#select-items").append('<option data-more=' + more + '>' + item + '</option>');
	});
	$("span.items-not").remove();
}

function iniciar(monto1){
	monto=monto1;
	total=monto1;
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