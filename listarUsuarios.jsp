<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="Entidad.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.UsuarioDAO"%>

<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Buscador por foto</title>

	<link rel="shortcut icon" href="assets/images/bpf.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="style2.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand"  href="index.html">Buscador por foto</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active"><a href="index.html">Inicio</a></li>
					<li><a href="about.html">Sobre nosotros</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Tiendas de búsqueda<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="https://mbest.aliexpress.com/?src=google&albch=fbrnd&acnt=379-215-0229&albcp=14792668553&albag=134516902504&slnk=&trgt=aud-842000338019%3Akwd-14802285088&plac=&crea=592556832423&netw=g&device=c&mtctp=e&memo1=&albbt=Google_7_fbrnd&albagn=888888&isSmbActive=false&isSmbAutoCall=false&needSmbHouyi=false&gclid=Cj0KCQjwmPSSBhCNARIsAH3cYgY1Pm00HN-4DBlUEyIDrwVPSPoH6-N3murXlE2Lx4IIqcncOHtKhDAaAo8BEALw_wcB&gclsrc=aw.ds&aff_fcid=78caf52b4328425dae6eef2ab8832353-1650313857868-04984-UneMJZVf&aff_fsk=UneMJZVf&aff_platform=aaf&sk=UneMJZVf&aff_trace_key=78caf52b4328425dae6eef2ab8832353-1650313857868-04984-UneMJZVf&terminal_id=ed4d42d4c7bd419dbea9c337f10845bf">AliExpress</a></li>
						</ul>
					</li>
					<li><a href="ControladorUsuario?accion=listar">Contáctenos</a></li>
					<li><a class="btn" href="signin.html">Iniciar Sesión</a></li>
                                        <li><a class="btn" href="signup.html">Registrarse</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->
    
        <div class="container">
            <br>
            <br>
            <br>
            <br>
            <h1>Usuarios Registrados</h1>
            <br>
            <br>
            <table>
                <thead>
                    <tr>
                        <th class="text-center">DNI</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">LOGIN</th>
                        <th class="text-center">CLAVE</th>
                        <th class="text-center">EMAIL</th>
                        <th class="text-center">TIPO</th>
                        <!--<th class="text-center">ACCION</th>-->
                    </tr>
                </thead>
                <%
                    UsuarioDAO dao=new UsuarioDAO();
                    List<Usuario>list=dao.listar();
                    Iterator<Usuario>iter=list.iterator();
                    Usuario u=null;
                    while(iter.hasNext()){
                        u=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= u.getIdUsuario()%></td>
                        <td class="text-center"><%= u.getNombre()%></td>
                        <td class="text-center"><%= u.getApellido()%></td>
                        <td class="text-center"><%= u.getUsuario()%></td>
                        <td class="text-center"><%= u.getPassword()%></td>
                        <td class="text-center"><%= u.getEmail()%></td>
                        <td class="text-center"><%= u.getTipo()%></td>
                        <!--<td class="text-center">  
                            <a class="btn btn-warning" href="ControladorUsuario?accion=editar&id=<%= u.getIdUsuario()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorUsuario?accion=eliminar&id=<%= u.getIdUsuario()%>">Remove</a>
                        </td>-->
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
                
                <div class="jumbotron top-space">
		<div class="container">
			
			<h3 class="text-center thin">¿Por que usar Busqueda Por Foto?</h3>
			
			<div class="row">
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Configurable</h4></div>
					<div class="h-body text-center">
						<p>El sitio web le permite crearse una cuenta que puede utilizar para crear un historial de busquedas por si se le olvida algo.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-flash fa-5"></i>Busquedas rapidas</h4></div>
					<div class="h-body text-center">
						<p>Usted podra realizar busquedas rapidas apenas iniciar el sitio web y obtener resultados al instante con solo un click. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-heart fa-5"></i>Busquedas confiables</h4></div>
					<div class="h-body text-center">
						<p>El sitio web le otorgara el resultado mas adecuado a su busqueda. ¿Algun elemento raro? No es problema, usted recibira un resultado apropiado.</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i>Soporte Continuo</h4></div>
					<div class="h-body text-center">
						<p>En BPF trabajamos para usted con actualizaciones periodicas a la base de datos, incluyendo cada vez mas productos y mejorando las busquedas. </p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">Preguntas Frecuentes</h2>
		<br>

		<div class="row">
			<div class="col-sm-6">
				<h3>¿Que es BPF?</h3>
				<p>Busqueda Por Foto es una herramienta web que permite a los usuarios identificar objetos mediante una foto que este sube a la plataforma.</p>
			</div>
			<div class="col-sm-6">
				<h3>¿Como uso esta herramienta?</h3>
				<p>
					El usuario solo tiene que cargar una imagen a la plataforma y esta se encargara de
                                        entregar la mejor coincidencia posible con opciones de compra en diferentes tiendas.</p>
			</div>
		</div> <!-- /row -->

		<div class="row">
			<div class="col-sm-6">
				<h3>¿Necesito registrarme para usar la herramienta?</h3>
				<p>
					No necesariamente. El usuario puede realizar busquedas rapidas que no dejaran registro. 
                                        Sin embargo, puede registrarse para que sus busquedas se almacenen en una base de datos. 
				</p>
			</div>
			<div class="col-sm-6">
				<h3>¿La plataforma es gratuita?</h3>
				<p>Si, totalmente gratuita. El usuario no necesita efectuar ningun pago para utilizar BPF.</p>
			</div>
		</div> <!-- /row -->

		<div class="jumbotron top-space">
			<h4>Dicta, nostrum nemo soluta sapiente sit dolor quae voluptas quidem doloribus recusandae facere magni ullam suscipit sunt atque rerum eaque iusto facilis esse nam veniam incidunt officia perspiciatis at voluptatibus. Libero, aliquid illum possimus numquam fuga.</h4>
     		<p class="text-right"><a class="btn btn-primary btn-large">Learn more »</a></p>
  		</div>

</div>	<!-- /container -->
	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->


	<footer id="footer" class="top-space">

		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">Contact</h3>
						<div class="widget-body">
							<p>+234 23 9873237<br>
								<a href="mailto:#">some.email@somewhere.com</a><br>
								<br>
								234 Hidden Pond Road, Ashland City, TN 37015
							</p>	
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Follow me</h3>
						<div class="widget-body">
							<p class="follow-me-icons">
								<a href=""><i class="fa fa-twitter fa-2"></i></a>
								<a href=""><i class="fa fa-dribbble fa-2"></i></a>
								<a href=""><i class="fa fa-github fa-2"></i></a>
								<a href=""><i class="fa fa-facebook fa-2"></i></a>
							</p>	
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">Text widget</h3>
						<div class="widget-body">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, dolores, quibusdam architecto voluptatem amet fugiat nesciunt placeat provident cumque accusamus itaque voluptate modi quidem dolore optio velit hic iusto vero praesentium repellat commodi ad id expedita cupiditate repellendus possimus unde?</p>
							<p>Eius consequatur nihil quibusdam! Laborum, rerum, quis, inventore ipsa autem repellat provident assumenda labore soluta minima alias temporibus facere distinctio quas adipisci nam sunt explicabo officia tenetur at ea quos doloribus dolorum voluptate reprehenderit architecto sint libero illo et hic.</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Home</a> | 
								<a href="about.html">About</a> |
								<a href="sidebar-right.html">Sidebar</a> |
								<a href="contact.html">Contact</a> |
								<b><a href="signup.html">Sign up</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2014, Your name. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a> 
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>

	 <!-- SCRIPTS -->
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
	 <script src="app.js"></script>
    </body>
</html>
