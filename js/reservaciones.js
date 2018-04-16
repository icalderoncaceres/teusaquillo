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
		let monto=$("#span-monto").text();
		monto=monto.replace("/./gi","");
		monto=parseFloat(monto);
		let retiros=$("#span-retiros").text();
		retiros=retiros.replace("/./gi","");
		retiros=parseFloat(retiros);
		let adiciones=$("#span-adiciones").text();
		adiciones=adiciones.replace("/./gi","");
		adiciones=parseFloat(adiciones);
		if($(this).is(':checked')){	//Para agregar
		}else{ //Para desmarcar			
			let valor=parseFloat($(this).data("less"));
			if(valor!=-1){
				$("#span-retiros").text(valor + retiros);
				retiros=parseFloat($("#span-retiros").text());
			}else{
				descuento=prompt("Ingrese el monto a descontar");
				if(descuento){
					valor=parseFloat(descuento);
					$("#span-retiros").text(valor + retiros);
				}
			}
		}
		total=monto - retiros + adiciones;
		$("#span-total").text(numberFormat(total));
	});
});

function addSelect(){
	$("span.items-not").each(function(e,index){
		let item=$(this).text();
		$("#select-items").append(`<option>${item}</option>`);
	});
	$("span.items-not").remove();
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
