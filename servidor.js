var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'assamita1',
  database : 'bch-b2b'
});
 
connection.connect();

usuarios = {};  
connection.query('SELECT * FROM users', function(err, rows, fields) {
  if (err) throw err;
  for (var i = 0; i < rows.length; i++) {
    usuarios[rows[i].id] = rows[i];
  };
});
 
//connection.end();

var puerto = 3003;//puerto por el cual se conectaran al servidor de nodejs html
var io= require('socket.io').listen(puerto);
var colors = require('colors');

var query = [];


io.sockets.on('connection', function (socket) {//Cuando un usuario se conecta a al servidor a través del socket "8008" de NodeJS, se ejecutara el evento "conexión". En este caso la variable “socket” que se recibe por argumento contiene todos los datos del nuevo usuario conectado.
  
  console.log("Empezó a funcionar el servidor de nodejs para html "+ puerto);

  console.log(("se conectó el usuario "+socket.id).green);  
  socket.emit('idUsuario', {id: socket.id, otrocosa:"asdf"});//Al usuario que se conectó se le solicita ejecutar el evento "mensajeDeBienvenida"

  socket.broadcast.emit('actualizarConsolaMensajes', {mensaje: "se conecto el usuario: "+socket.id});
  socket.emit('actualizarConsolaMensajes', {mensaje: "bienvenido: "+socket.id});  

  function js_yyyy_mm_dd_hh_mm_ss () {
    now = new Date();
    year = "" + now.getFullYear();
    month = "" + (now.getMonth() + 1); if (month.length == 1) { month = "0" + month; }
    day = "" + now.getDate(); if (day.length == 1) { day = "0" + day; }
    hour = "" + now.getHours(); if (hour.length == 1) { hour = "0" + hour; }
    minute = "" + now.getMinutes(); if (minute.length == 1) { minute = "0" + minute; }
    second = "" + now.getSeconds(); if (second.length == 1) { second = "0" + second; }
    return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second;
  }

  socket.on('enviarMensaje',function(datos){
    console.log("El usuario: " + socket.id + ", envia el mensaje: "+ datos.mensaje);
    //date
    now = new Date();
    year = "" + now.getFullYear();
    month = "" + (now.getMonth() + 1); if (month.length == 1) { month = "0" + month; }
    day = "" + now.getDate(); if (day.length == 1) { day = "0" + day; }
    hour = "" + now.getHours(); if (hour.length == 1) { hour = "0" + hour; }
    minute = "" + now.getMinutes(); if (minute.length == 1) { minute = "0" + minute; }
    second = "" + now.getSeconds(); if (second.length == 1) { second = "0" + second; }
    var date = year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second;
    //date
    console.log('INSERT INTO messages (user_id, message, created_at, updated_at) VALUES ('+usuarios[datos.idUsuario].id+",'"+datos.mensaje+"','"+date+"','"+date+"')");
    connection.query('INSERT INTO messages (user_id, message, created_at, updated_at) VALUES ('+usuarios[datos.idUsuario].id+",'"+datos.mensaje+"','"+date+"','"+date+"')", function(err) {
      if (err) console.log(err);
    });
    temp = usuarios[datos.idUsuario];    

    for (var i in usuarios) {
      if(usuarios[i].id!=datos.idUsuario){
        usuarios[i].pendingMessages++;
        connection.query('UPDATE `users` SET `pendingMessages`= '+usuarios[i].pendingMessages+' WHERE `id`= '+usuarios[i].id, function(err) {
          if (err) console.log(err);
        });
      }else{
        usuarios[i].pendingMessages=0;
        connection.query('UPDATE `users` SET `pendingMessages`= '+usuarios[i].pendingMessages+' WHERE `id`='+usuarios[i].id, function(err) {
          if (err) console.log(err);
        });
      }
    }

    /*while(query.length>0){
      var temp = query.pop();
      console.log(temp);
      connection.query(temp, function(err) {
          if (err) console.log(err);
        });
    }¨*/

    //temp.name = "yo";
    socket.emit('mensajeRecibido',{usuario:usuarios[datos.idUsuario], mensaje: datos.mensaje, created_at:date});    
    socket.broadcast.emit('mensajeRecibido',{usuario:usuarios[datos.idUsuario],mensaje:datos.mensaje, created_at:date});
  });

  socket.on('disconnect', function () {
    console.log(("se desconecto el usuario "+socket.id).yellow);  
    io.sockets.emit('actualizarConsolaMensajes', {mensaje: "se desconecto el usuario: "+socket.id});//Se le solicita a todos los usuarios conectados al puerto "8008" que ejecuten el evento "actualizarConsolaMensajes"
  });

  socket.on('molestarAlertaCliente',function(datos){
    console.log("ejecutando molestarAlertaCliente");
    io.sockets.emit('molestarAlertaTodos',{});
  });

  socket.on("alerta",function(datos){
    socket.broadcast.emit("alerta",{tipo:datos.tipo});
  })

});

var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function preguntar(){
    rl.question("", function(answer){
      io.sockets.emit("mensajeRecibido", {mensaje: "Servidor de node: "+ answer});
      preguntar();
    });
}
preguntar();
