// JavaScript Document
function CargarConJQuery(url,tipodiv) {
  $("#IdContenido").html("<span style='color:#5194AE;'><b>Cargando...</a></span>");
  if(typeof tipodiv!='undefined')
    $("#IdContenido").css('overflow',tipodiv);
  $.ajax({
    url: url,
    cache: false,
    success: function(html) {
      $("#IdContenido").html('<div id="IdSectionPages">'+html+'</div>');
		  window.scrollTo(0,0);
	  },
 	  statusCode: {
		  404: function() {$("#IdContenido").html("<span style='color:#5194AE;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;La p&aacute;gina no existe</span>");}
	  },
	  error: function (request, status, error) {
      $("#IdContenido").html("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Error:"+request.responseText);
    }
  });
}

function enviarMail() {
	if (document.getElementById('nombre').value=="" || document.getElementById('correo').value=="" || document.getElementById('comentario').value=="" ) {
	  $("#lblInformacion").html( 'Llene todos los campos por favor...' );
	} else {
	  var nombre=document.getElementById('nombre').value;
	  var correo=document.getElementById('correo').value;
	  var comentario=document.getElementById('comentario').value; 
    $.ajax({
      type: "POST",
      url: "pages/mail.php",
      data: {nombre: nombre, correo: correo, comentario: comentario },
	    success: function(envio) {
		    if(envio=="OK") {
		      $("#lblInformacion").html( 'Gracias por sus comentarios...' );
		    } else if(envio=="NO"){
		      $("#lblInformacion").html( 'El correo no pudo enviarse...' );
		    } else {
		      $("#lblInformacion").html( 'Ocurrio un error...' + datos );
		    }  
      },
	    error: function(objeto, quepaso, otroobj) {
        $("#lblInformacion").html( 'Ocurrio un error...' );
      }
    });
		document.getElementById('nombre').value="";
	  document.getElementById('correo').value="";
	  document.getElementById('comentario').value="";
	}
}

function mainmenu() {
  $("#IdMenu ul li ul ").css({display: "none"});
  $(" #IdMenu ul li").hover(function(){
    $(this).find('ul:first:hidden').css({visibility: "visible",display: "none"}).slideDown(400);
  },function(){
    $(this).find('ul:first').slideUp(400);
  });
}