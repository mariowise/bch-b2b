# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
	{name: "Mario Luis", lastname: "López Landes", phone: "+56956107696", email: "mariolopezlandes@gmail.com", password: "mario123", password_confirmation: "mario123"}
])

inmuebles = Tag.create({ name: "Inmuebles" })
inmuebles.companies.create([
	{razon_social: "Virtual pyme", rut: "76750650-3", img_url:"http://www.virtualpyme.cl/_layout/images/logo.png", email:"contacto@virtualpyme.cl", giro: "Alquiler de inmuebles", direccion: "Padre Mariano N° 391 Oficina 704, PROVIDENCIA", comuna: "Las Condes", coordenadas: "-33.4100643,-70.5712278", descripcion: "Virtualpyme SpA. es una de las empresas que lidera los servicios de oficina virtuales en Chile, con más de 10 años en el mercado y 4 sucursales en Santiago. Nuestro profesionalismo, confianza y seriedad es nuestro sello de calidad, que nos distingue dentro del mercado de Oficinas Virtuales en Chile."},


])

educacion = Tag.create({ name: "Educación" })
constructora = Tag.create({ name: "Constructora" })
tienda_regalos = Tag.create({ name: "Tienda regalos" })
imprenta = Tag.create({ name: "Imprenta" })
empleos = Tag.create({ name: "Empleos" })
vidrio = Tag.create({ name: "Vidrio" })
porcelana = Tag.create({ name: "Porcelana" })
asesoria = Tag.create({ name: "Asesoria" })
turismo = Tag.create({ name: "Turismo" })
suministros = Tag.create({ name: "Suministros" })
informatica = Tag.create({ name: "Informatica" })
marketing = Tag.create({ name: "Marketing" })
innovacion = Tag.create({ name: "Innovacion" })
redes_sociales = Tag.create({ name: "Redes Sociales" })
telecomunicaciones = Tag.create({ name: "Telecomunicaciones" })
comercio_electronico = Tag.create({ name: "Comercio electronico" })
desarrollo_software = Tag.create({ name: "Desarrollo software" })
libros = Tag.create({ name: "Libros" })
productos_forestales = Tag.create({ name: "Productos forestales" })
carton = Tag.create({ name: "Carton" })
papel = Tag.create({ name: "Papel" })
mudanzas = Tag.create({ name: "Mudanzas" })

Company.create([
	{tags: [constructora, inmuebles], razon_social: "Constructora Belfi Montec", rut: "76750650-3", img_url:"http://www.belfi.cl/images/logo.gif", email:"contacto@belfi.cl", giro: "Empresa constructora", direccion: "Calle Puerta del Sol 55, P3, Las Condes, Santiago, Región Metropolitana", comuna: "Las Condes", coordenadas: "-33.41367591599094,-70.57861310514524", descripcion: "Empresa Constructora Belfi S.A.  se inicia en 1950 como una Empresa de Construcciones en general.   La empresa está inscrita en Primera Categoría en el “Ministerio de Obras Públicas” y otras instituciones fiscales, estables y privadas del país."},	
	{tags: [tienda_regalos, comercio_electronico], razon_social: "Pro-Gift Merchandising Articulos Publicitarios Regalos Corporativos en Santiago", rut: "76750650-3", img_url:"https://lh4.googleusercontent.com/-ZZN8O_Hp8HA/VNgpM-rGVfI/AAAAAAAAAAU/wpU_KI9AE4Y/s160-k-no/", email:"contacto@pro-gift.cl", giro: "Tienda de regalos", direccion: "Rosario Sur 135, Santiago, Las Condes, Región Metropolitana", comuna: "Las Condes", coordenadas: "-33.4106131,-70.5699307", descripcion: ""},
	{tags: [imprenta], razon_social: "Auto Adhesivos", rut: "76750650-3", img_url:"http://www.autoadhesivos.cl/wp-content/uploads/2014/10/logo.png", email:"ventas@autoadhesivos.cl", giro: "Imprenta", direccion: "Avda Apoquindo 5534, Las Condes, Santiago, Región Metropolitana", comuna: "Las Condes", coordenadas: "-33.41138326854108,-70.56560975584104", descripcion: "Desde 1998 En el mercado grafico ofreciendo. Productos y Servicios de calidad Garantizada. Con el objetivo de brindar a nuestros clientes una atención personalizada y oportuna."},
	{tags: [empleos, educacion], razon_social: "Laborum Com Chile", rut: "76750650-3", img_url:"http://www.apertura.com/__export/1431713143210/sites/revistaap/img/clase/2014/11/18/laborum_img_crop1416337699315.jpg", email:"clientes@laborum.cl", giro: "Oficina pública de empleo", direccion: "Los Militares 4777, Santiago, Región Metropolitana", comuna: "Las Condes", coordenadas: "-33.41367591599094,-70.57861310514524", descripcion: "Porque confiamos en tus capacidades, Laborum Inclusivo te ofrece la oportunidad de integrar el mercado laboral mediante un empleo. Postula a nuestros avisos de trabajo y asesórate con las instituciones asociadas."},
	{tags: [porcelana, vidrio], razon_social: "Pizarras de vidrio", rut: "76750650-3", img_url:"http://www.vidrieriapocuro.com/uploads/7/5/4/3/7543189/1414085376.png", email:"ventas@vidrieriapocuro.com", giro: "Tienda de porcelana", direccion: "Nueva Providencia 2060, Santiago, Providencia, Región Metropolitana", comuna: "Providencia", coordenadas: "-33.42657093017396,-70.61067086729123", descripcion: "Todo tipo de servicios relacionados con ampliación y reparación de ventanas o puertas de aluminio y vidrio. Oficinas, Locales Comerciales, Colegios, Estadios, Casinos, Industrias. Desde una simple reparación hasta la ampliación o cambio total de su espacio. "},
	{tags: [asesoria], razon_social: "Bettersoft Consultores", rut: "76750650-3", img_url:"http://www.bettersoft.cl/photos/tfile_logo.png", email:"comercial@bettersoft.cl ", giro: "Asesor", direccion: "Nueva Providencia 2155, Santiago, Región Metropolitana", comuna: "Providencia", coordenadas: "-33.42657093017396,-70.61067086729123", descripcion: "Es una compañía de servicios de consultoría y de desarrollo de software para las áreas de Gestión, fuertemente focalizada en la prestación de servicios para el área de educación. Nuestra compañía fue fundada en 1998 por Jaime Núñez Videla, Ingeniero Informático de la Universidad de Chile y MBA de la Universidad Diego Portales, ex – socio gerente y creador tecnológico de Flexline, software ERP líder en gestión administrativa en la década de los ‘90."},
	{tags: [turismo,comercio_electronico], razon_social: "Agencia de Viajes C T S Turismo", rut: "76750650-3", img_url:"http://www.ctsnacional.cl/wp-content/uploads/2012/12/logo.png", email:"contacto@ctsviajes.cl", giro: "Agencias de Turismo (Incluye Venta de Pasajes)", direccion: "Calle Antonio Bellet 77, Of 202, Providencia, Santiago, Región Metropolitana", comuna: "Providencia", coordenadas: "-33.42657093017396,-70.61067086729123", descripcion: "Fundada en 1978, por Don Christiàn Carrère, CTS Turismo, cuenta con una reconocida y sólida trayectoria en la industria del Turismo, siendo hoy , una de las más importantes Empresas del rubro en Chile, con prestigio a nivel Nacional e Internacional."},
	{tags: [suministros], razon_social: "IMA", rut: "76750650-3", img_url:"http://www.ima.cl/templates/gk_hitmusic/images/style3/logo.png", email:"contacto@ima.cl", giro: "Empresa de suministros industriales", direccion: "Francisco Noguera, Santiago, Providencia, Región Metropolitana", comuna: "Providencia", coordenadas: "-33.42657093017396,-70.61067086729123", descripcion: "IMA nace en 1982 fruto del emprendimiento de los ingenieros Aldo Amadori y Juan Menchaca, como una empresa dedicada a los Servicios de Instrumentación."},
	{tags: [informatica, desarrollo_software], razon_social: "Posicionamiento Web - Destaca Chile S.A", rut: "76020044-1", img_url:"/img/posicionamientoWeb.jpg", email:"contacto@destaca.cl", giro: "Informática", direccion: "José Victorino Lastarria #15, Piso 3", comuna: "Santiago", coordenadas: "-33.439934,-70.6419102", descripcion: "Primera compañía chilena especializada en SEO, Posicionamiento Web Orgánico y Marketing Online. Enfocamos nuestros esfuerzos en la investigación e innovación a través de nuevas herramientas y aplicaciones en Redes Sociales y Google Adwords."},
	{tags: [comercio_electronico, informatica], razon_social: "E-CERTCHILE - Empresa Nacional de Certificación Electrónica.", rut: "96928180-5", img_url:"https://www.e-certchile.cl/sites/default/files/logo-e-certchile.png", email:"sclientes@e-certchile.cl", giro: "Servicio de comercio electrónico", direccion: "Monjitas 392, Santiago", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Cámara de comercio de santiago"},
	{tags: [telecomunicaciones], razon_social: "SUCURSAL MOVISTAR BELLAS ARTES", rut: "7204054-1", img_url:"http://saladeprensa.telefonica.com/img/elementos/imagenes/logo_movistar_alta_3.jpg", email:"conacto@movistar.cl", giro: "Compañía telefónica", direccion: "Huerfanos 623, Chile", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Smartphones, tablets y accesorios en tiendas de telefonía oficial de operador de servicios de ADSL y cable."},
	{tags: [telecomunicaciones], razon_social: "ENTEL - HUERFANOS", rut: "7204054-1", img_url:"https://lh4.googleusercontent.com/-KDaeL2ElkUg/AAAAAAAAAAI/AAAAAAAAAAA/IC880NXzWEs/s0-c-k-no-ns/photo.jpg", email:"contacto@entel.cl", giro: "Proveedor de servicios de telecomunicación", direccion: "Huérfanos 718", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "servicios telefónicos"},
	{tags: [libros, comercio_electronico], razon_social: "Librerías y Timbres Chile", rut: "777054-1",img_url:"http://www.libreriachile.cl/img/logo.jpg", email:"contacto@libreriachile.cl", giro: "Venta de libros", direccion: "Bandera 183 Local 18", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Venta de libros al por mayor y menor a precios convenientes"},
	{tags: [productos_forestales], razon_social: "Empresas Cmpc", rut: "7675054-1", img_url:"http://www.cmpc.cl/wp-content/themes/cmpc2013/img/logo.png", email:"contacto@cmpc.cl", giro: "Comercialización de productos forestales", direccion: "Agustina 1343", comuna: "Santiago", coordenadas: "-33.4402001542832,-70.65686307415776", descripcion: "CMPC es una de las empresas líderes de Latinoamérica en la producción y comercialización de Productos Forestales, Celulosa, Papeles y Productos Tissue."},
	{tags: [desarrollo_software,informatica], razon_social: "Transtecnia S.A.", rut: "7745054-1", img_url:"http://www.bumeran.cl/portal/img/empresas/0/0/0/0/6/9/0/4/2/0/logoMainPic_690420.jpg", email:"contacto@transtecnia.cl", giro: "Desarrollo de software", direccion: "Adriana Undurraga 206", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Transtecnia es una empresa chilena líder y pionera desde 1987 en el desarrollo de soluciones tecnológicas de gestión tributaria, contable, de facturación electrónica y de remuneraciones."},
	{tags: [suministros], razon_social: "Endesa Chile", rut: "7756054-1", img_url:"https://www.endesaclientes.com/static/iberia/img/modulos/header/bg_logo.png", email:"contacto@endesa.cl", giro: "Proveedor de servicios agua y luz", direccion: "Av. Sta. Rosa 76", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Proveedor de bienes y servicios asociados al agua y la luz."},
	{tags: [libros, papel, carton], razon_social: "Packing Impresores", rut: "7578054-1", img_url:"http://www.eco-logica.co/productos/caja01.jpg", email:"packing@packingimpresores.cl ", giro: "Fábrica de envases de cartón y papel", direccion: "Calle San Diego 666", comuna: "Santiago", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Fábrica de envases de papel y cartón"},
	{tags: [suministros], razon_social: "IMA", rut: "7578054-1", img_url:"http://www.feriasinfo.es/logos/ima_logo_293.jpg", email:"ima@contacto.cl", giro: "Empresa de suministros industriales", direccion: "Gral Bustamante 540", comuna: "Providencia", coordenadas: "-33.44162555628785,-70.6334895", descripcion: "Empresa encargada de la venta de suministros industriales"},
	{tags: [mudanzas], razon_social: "Chile Mudanzas", rut: "7578054-1", img_url:"http://www.chile-mudanzas.cl/Images/INDEX3_06.jpg", email:"contacto@chile-mudanzas.cl", giro: "Servicio de mudanzas", direccion: "Marín 275, Santiago, Providencia, Región Metropolitana", comuna: "Providencia", coordenadas: "-33.43949984058525,-70.62974673780515", descripcion: "ChileMudanzas tiene la convicción de que su mudanza no tiene porque  ser un evento traumático y angustiante, sino por el contrario que ésta sea el primer paso para un cambio favorable en su vida, con nuevos desafíos y nuevas oportunidades."}
])

