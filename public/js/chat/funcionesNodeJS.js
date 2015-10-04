
var puerto = 3003;//puerto del servidor
var socket;//variable que guardará la conección con el servidor
var servidorNode = "127.0.0.1";
try {
	socket = io.connect(servidorNode+':'+puerto+'/');//se establece conección con el servidor
	//Eventos ejecutados por parte del servidor de NodeJS
	/*socket.on('actualizarConsolaMensajes',function(datos){
		document.getElementById("consolaMensajes").innerHTML=datos.mensaje;
	});*/

	socket.on('idUsuario',function(datos){
		//document.getElementById("idUsuario").innerHTML="Usuario:" + datos.id +datos.otrocosa;
	});

	socket.on('mensajeRecibido',function(datos){
		if(vistaMensajes){
			var name;
			if(datos.usuario.id==idUsuario){
				mensajesPendientes=0;
				name = "yo";
				// document.getElementById("contenedor_chat").innerHTML+="yo: "+datos.mensaje+"<br>";
			}else{
				name=datos.usuario.name;
				//document.getElementById("contenedor_chat").innerHTML+=datos.usuario.name+": "+datos.mensaje+"<br>";
			}
			var temp="";
			temp+='<li class="left clearfix"><span class="chat-img pull-left">';
			temp+='	<img src="http://placehold.it/50/55C1E7/fff&amp;text=U" alt="User Avatar" class="img-circle">';
			temp+='	</span>';
			temp+='	<div class="chat-body clearfix">';
			temp+='		<div class="header">';
			temp+='			<strong class="primary-font">'+name+'</strong> <small class="pull-right text-muted">';
			temp+='			<span class="glyphicon glyphicon-time"></span>'+datos.created_at+'</small>';
			temp+='		</div>';
			temp+='		<p>';
			temp+=datos.mensaje;
			temp+='		</p>';
			temp+='	</div>';
			temp+='</li>';
			document.getElementById("contenedor_chat").innerHTML += temp;
			var d = $('#contenedor_chat').parent();
			d.scrollTop(d.prop("scrollHeight"));
			// document.getElementById("contenedor_chat").scrollTop =100000000;
		}else{
			mensajesPendientes++;
			//document.getElementById("mensajes").innerHTML = "Mensajes pendientes "+mensajesPendientes;
		}
	});
	

	function enviarMensaje(){
		socket.emit('enviarMensaje', {idUsuario:idUsuario, mensaje:document.getElementById("write").value});		
		document.getElementById("write").innerHTML ="";
		document.getElementById("write").value="";
	}

	function alerta(e){
		socket.emit("alerta", {e:''});
	}

	socket.on("alerta",function(datos){
		Command: toastr["success"]("Alguien compro", "Presupuesto")
		toastr.options = {
		  "closeButton": false,
		  "debug": false,
		  "newestOnTop": false,
		  "progressBar": false,
		  "positionClass": "toast-top-right",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "300",
		  "hideDuration": "1000",
		  "timeOut": "5000",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
	})

	function enviarMensajeEnter(e) {
		var key=e.keyCode || e.which;
		if (key==13){ enviarMensaje(); }
	}

	function molestarAlerta(){
		socket.emit('molestarAlertaCliente',{});
	}

}
catch (err) {//en caso de que no se pueda establecer conección
	console.log('No está disponible el servidor Node.js'+err);
}