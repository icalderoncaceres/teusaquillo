$(document).ready(function(){
	var total=0,aumetos=0,disminuciones=0;
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
		if($(this).is(':checked')){	//Para agregar
			alert(total);
		}else{ //Para desmarcar
			
		}
	});
});

function addSelect(){
	$("span.items-not").each(function(e,index){
		let item=$(this).text();
		$("#select-items").append(`<option>${item}</option>`);
	});
	$("span.items-not").remove();
}