// JavaScript Document

$(document).ready(function() {
  mainmenu();
	$("#menuHistoria").click(function(){ window.location="";  })
  $("#menuLaBoda").click(function(){CargarConJQuery('pages/laboda.php')});
	$("#menuHospedaje").click(function(){CargarConJQuery('pages/hospedaje.php')});
  $("#menuGaleria").click(function(){CargarConJQuery('pages/galeria.php')});
  $("#menuContacto").click(function(){CargarConJQuery('pages/contacto.php')});
	
	$("div#makeMeScrollable").smoothDivScroll({
	  autoScrollingMode: "onStart"
	});
});




