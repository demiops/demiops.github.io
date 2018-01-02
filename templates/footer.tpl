
<!--=== Footer ===-->
<div class="footer">
	<div class="container">
		<div class="row-fluid">
			<div class="span4">
                <!-- About -->
		        <div class="headline"><h3>Nosotros</h3></div>	
				<p class="margin-bottom-25">Con base en la ciudad de Hermosillo, Sonora, Mexico, nuestra mision es proveer soluciones para cloud que permitan su administracion, control y automatizacion de una manera sencilla.</p>	

	            <!-- Monthly Newsletter -->
		        <div class="headline"><h3>Noticias Mensuales</h3></div>	
				<p>Subscribete a nuestra lista de correo para recibir las ultimas noticias sobre Demiops asi como nuevos productos y servicios que lanzaremos.</p>
				<form class="form-inline">
					<div class="input-append">
						<input type="text" placeholder="Direccion de Correo" class="input-medium">
						<button class="btn-u">Subscribete</button>
					</div>
				</form>							
			</div><!--/span4-->	
			
			<div class="span4">
                    <div class="headline"><h3>Mas Demiops</h3></div>
			<b>Administracion IaaS</b><br />
                        <ul>
                           <li><a href="roles.html">Roles y Tareas</a></li>
                           <li><a href="flujos.html">Deployments y Flujos</a></li>
                           <li><a href="puppet.html">Demiops y Puppet</a></li>
                           <li><a href="chef.html">Demiops y Chef</a></li>
                           <li><a href="auto-crecimiento.html">Auto Crecimiento</a></li>
                           <li><a href="windows.html">Windows</a></li>
                        </ul>
                        <br />
                        <b>Administracion PaaS</b>
                        <div class="row-fluid"><div class="span3">
                        <ul>
                           <li><a href="dws.html">DWS</a></li>
                           <li><a href="dai.html">DAI</a></li>
                           <li><a href="dnc.html">DNC</a></li>
                           <li><a href="dsc.html">DSC</a></li>
                           <li><a href="dcdn.html">DCDN</a></li>
                        </ul>
                        </div>
                        <div class="span3">
                        <ul>
                           <li><a href="ddata.html">DData</a></li>
                           <li><a href="dmon.html">DMon</a></li>
                           <li><a href="ddns.html">DDNS</a></li>
                           <li><a href="dsi.html">DSI</a></li>
                           <li><a href="dms.html">DMS</a></li>
                        </ul>
                        </div>
                        <div class="span3">
                        <ul>
                           <li><a href="dns.html">DNS</a></li>
                           <li><a href="dqs.html">DQS</a></li>
                           <li><a href="dwf.html">DWF</a></li>
                           <li><a href="dcache.html">DCache</a></li>
                        </ul>
                        </div></div>
			</div><!--/span4-->

			<div class="span4">
	            <!-- Monthly Newsletter -->
		        <div class="headline"><h3>Contactanos</h3></div>	
                <address>
					Hermosillo, Sonora, Mexico <br />
					Telefono: +1 512 627 9817<br />
					Email: <a href="mailto:info@demiops.com" class="">info@demiops.com</a>
                </address>

                <!-- Stay Connected -->
		        <div class="headline"><h3>Conectate</h3></div>	
                <ul class="social-icons">
                    <li><a href="http://www.demiops.com/documentacion/blog/" data-original-title="Feed" class="social_rss"></a></li>
                    <li><a href="https://www.facebook.com/demiops/" data-original-title="Facebook" class="social_facebook"></a></li>
                    <li><a href="http://www.twitter.com/demiops" data-original-title="Twitter" class="social_twitter"></a></li>
                    <li><a href="https://plus.google.com/u/1/b/101022611892267972999/101022611892267972999/posts" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                    <!-- <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li> -->
                    <li><a href="http://www.linkedin.com/company/demiops" data-original-title="Linkedin" class="social_linkedin"></a></li>
                    <!-- <li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li> -->
                </ul>
			</div><!--/span4-->
		</div><!--/row-fluid-->	
	</div><!--/container-->	
</div><!--/footer-->	
<!--=== End Footer ===-->

<!--=== Copyright ===-->
<div class="copyright">
	<div class="container">
		<div class="row-fluid">
			<div class="span8">						
	            <p>2013 &copy; Demiops. Todos los Derechos Reservados. <a href="privacidad.html">Politica de Privacidad</a> | <a href="terminos.html">Termino de Servicio</a></p>
			</div>
			<div class="span4">	
				<a href="index.html"><img id="logo-footer" src="assets/img/logo2-default.png" class="pull-right" alt="" /></a>
			</div>
		</div><!--/row-fluid-->
	</div><!--/container-->	
</div><!--/copyright-->	
<!--=== End Copyright ===-->

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="assets/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="assets/js/modernizr.custom.js"></script>		
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>	
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/jquery.cslider.js"></script> 
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/pages/index.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        Index.initParallaxSlider();
	if (/contactanos\.html$/.test(window.location.href)) {
          Contact.initMap();
        }
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/js/respond.js"></script>
<![endif]-->

</body>
</html>	
