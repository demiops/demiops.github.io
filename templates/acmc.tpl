<!--=== Content Part ===-->
<div class="container">		
	<div class="row-fluid">
    	<div class="span9">
            <!-- Our Services -->
            <div class="row-fluid">
                <div class="headline"><h3>ACMC</h3></div>
                <div class="row-fluid margin-bottom-40">
                    <div class="span12">
                        <h4><a href="#"></a></h4>
                        <p>ACMC provee una capa de administracion IaaS centralizada que le permite crear, automatizar y controlar recursos en las cloud publicas y privadas mas populares. Tambien provee una serie de caracteristicas que le permitira tener su applicacion de internet lista en segundos.
<br><br>
<b>Caracteristicas:</b><br>

Crear vms, firewalls (grupos de seguridad), volumenes (discos), balanceadores de carga, llaves de seguridad on multiples clouds publicas y privadas incluyendo:
<ul>
<li>Amazon Web Services</li>
<li>Google Compute Engine</li>
<li>Rackspace Open Cloud</li>
<li>HP Cloud</li>
<li>Azure</li>
<li>OpenStack</li>
<li>Eucalyptus</li>
<li>CloudStack</li>
</li></ul> 
<br>
<b>Roles y Tareas</b><br><br>

En el mundo ACMC cada servidor puede tener uno o mas roles (dependiendo de su entorno) y puede ejecutar una o mas tareas. Por ejemplo un rol de servidor web puede ejecutar:
<br><br>
<ul>
<li>Iniciar servidor web</li>
<li>Detener servidor web</li>
<li>Respaldar</li>
<li>Configurar sitio de mantenimiento</li>
<li>Descargar el codigo mas reciente de la aplicacion</li>
</ul><br>
Las Tareas estan limitadas solamente por su imaginacion y pueden ser programadas en cualquier lenguaje (bash, ruby, python, perl, powershell, java) mientras el interprete del lenguaje se encuentre disponible en el servidor.
<br><br>

<b>Flujos y Deployments</b><br><br>

Los Flujos son una combinacion de rol-tarea el cual pueden ser ejecutados en un orden especifico mientras que los Deployments permite ejecutar multiples Flujos. Esto le da al usuario la habilidad de crear deployments de aplicaciones en segundos, controlar y coordinar toda la infraestructura. Por ejemplo vamos a hacer el deploy de una aplicacion de ruby on rails:
<br><br>
<ul>
<li>Deployment - mycoolapp<br>
<ul>
<li>miflujodeconfiguracion - onboot<br>
<ul><li>servidorweb::limpiarfilesy>stem</li>
<li>basededatos::limpiarfilesystem</li>
<li>servidorweb::configurarpassenger</li>
<li>basededatos::crearbasededatos</li>
<li>servidorweb::descargarcodigo</li>
<li>servidorweb::iniciar</li></ul></li>

<li>lujoinicialdemantenimento<br>
<ul><li>servidorweb::prepararpaginademantenimiento</li>
<li>servidorweb::reload</li>
<li>basededatos::pararbasededatos</li></ul></li>

<li>flujofinaldemantenimiento<br>
<ul><li>basededatos::iniciarbasededatos</li>
<li>servidorweb::removerpaginademantenimento</li>
<li>servidorweb::reload</li></ul></li>
</ul></li>
</ul>
<br>
Cada flujo puede ser ejecutado por si mismo, al inicio con la opcion de onboot, si esta agrupado en un deployment. El hecho de que las vms esten organizadas por roles le da la habilidad de controlar 1 o 100000x servidores en paralelo. Cada flujo ejecuta sus ordenes en una orden secuencial pero las tareas son ejecutadas en forma paralela en todos los servidores que pertenecen al mismo rol.
<br><br>

<b>Lenguaje de Infraestructura</b><br><br>

Permitir que sus desarroladores y cualquier otra persona en su compania mantenga la infraestructura (servidores, discos, firewalls) de una aplicacion sin el conocimiento necesario, es realmente un reto. Uno de los objetivos de ACMC es proveer una plataforma que sea facil de utilizar y ahi es donde el Lenguaje de Infraestructura entra.
<br><br>
Con el Lenguaje de Infraestructura sus usuarios pueden crear sus propias infraestructuras por si mismos, compartirlas, importarlas o exportarlas sin nigun problema. LI es un Lenguaje de Dominio Especifico que corre dentro de ACMC el cual le permite que sus usuarios no tecnicos puedan crear, diseniar y mantener el hardware virtual en cuestion de segundos sin necesidad de ser expertos en Cloud.
<br><br>
Con algo tan sencillo como escribir:
<br><br>
zone "amazon" do<br> 
&nbsp;azone "us-east-1a" do<br>
        &nbsp;&nbsp;firewall "mysecurefw" do<br>
&nbsp;&nbsp;&nbsp;                  port 80<br>
&nbsp;&nbsp;&nbsp;                  proto tcp<br>
&nbsp;&nbsp;&nbsp;                  source 0.0.0.0/0<br>
&nbsp;&nbsp;        end<br>
&nbsp;&nbsp;        volume "mybackup" do<br>
&nbsp;&nbsp;&nbsp;                  count 5<br>
&nbsp;&nbsp;&nbsp;                  size 20G<br>
&nbsp;&nbsp;        end<br>
&nbsp;&nbsp;        server "mywebservers" do<br>
&nbsp;&nbsp;&nbsp;                  image "mycoolimage"<br>
&nbsp;&nbsp;&nbsp;                  count 10<br>
&nbsp;&nbsp;&nbsp;                  volume "mybackup-4"<br>
&nbsp;&nbsp;&nbsp;                  firewall "mysecurefw"<br>
&nbsp;&nbsp;&nbsp;                  role "webserver"<br>
 &nbsp;&nbsp;&nbsp;                 deployment "myrailsapp"<br>
&nbsp;&nbsp;        end<br>
&nbsp;&nbsp;        server "databases" do<br>
&nbsp;&nbsp;&nbsp;                  image "mycoolimage"<br>
     &nbsp;&nbsp;&nbsp;             count 2<br>
&nbsp;&nbsp;&nbsp;                  volume "mybackup-3"<br>
&nbsp;&nbsp;&nbsp;                  firewall "none"<br>
&nbsp;&nbsp;&nbsp;                  role "database"<br>
&nbsp;&nbsp;&nbsp;            deployment "myrailsapp"<br>
&nbsp;&nbsp;        end<br>
&nbsp;    end<br>
end<br>
<br>
Sus usuarios tendran una aplicacion web lista en segundos.
<br><br>            
<b>Soporte para Puppet y Chef</b><br><br>

ACMC permite no solamente el uso de scripts pero tambien incluir codigo puppet y chef, el cual es enviado a las vms en el cloud y ejecutado localmente en cada una de estas atraves de puppet o chef-solo. Sin embargo la integracion completa de ACMC para hablar el protocolo puppet y chef esta en desarrollo.</p>
                    </div>
                </div><!--/welcome-block-->
            </div><!--/row-fluid-->        

            <!-- About Us -->
            <div class="headline"><h3>Acerca de Demiops</h3></div>
            <p><img class="pull-left lft-img-margin img-width-200" src="assets/img/carousel/6.jpg" alt="" />Demiops provee una plataforma que te permite automatizar, configurar y administrar todos tus recursos a traves de:</p>
            <ul class="unstyled">
                <li><i class="icon-ok color-green"></i> Nubes Publicas</li>
                <li><i class="icon-ok color-green"></i> Nubes Privadas</li>
                <li><i class="icon-ok color-green"></i> Nubes Hibridas</li>
                <li><i class="icon-ok color-green"></i> Centro de Datos</li>
            </ul><br>

            <!-- Blockquotes -->
            <blockquote class="hero-unify">
                <p>Proveemos un acercamiento personal y efectivo a cada proyecto en el cual trabajamos por lo cual Demiops es la mejor opcion para administrar y optimizar todos sus recursos cloud.</p>
                <small>CEO, Miguel Zuniga</small>
            </blockquote>
        </div><!--/span9-->
        <div class="span3">
            <!-- Our Mission -->
            <div class="margin-bottom-20">
                <div class="headline"><h3>Nuestra Mision</h3></div>
                <p align="justify">Proveer soluciones para computacion en nube que permitan su administracion, control y automatizacion de una manera sencilla, el cual permitira a su negocio enfocarse en su crecimiento y dejar atras todos los problemas que envuelve la administracion de tecnologias de informacion..</p>
                        </div>
            <!-- Posts --><div class="posts margin-bottom-20">
                <div class="headline"><h3>Nuestros Productos</h3></div>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">ACMC</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Platform Control</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Software Control.</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/9.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">OpSeven.</a></p>
                    </dd>
                </dl>
            </div><!--/posts-->
            <!-- Contact Us --><div class="who margin-bottom-30">
                <div class="headline"><h3>Contactanos</h3></div>
                <p>Interesado en alguno de nuestros servicios... puedes contactarnos por:</p>
                <ul class="unstyled">
                    <li><a href="#"><i class="icon-home"></i>Hermosillo, Sonora, Mexico, CP 83100</a></li>
                    <li><a href="mailto:info@demiops.com"><i class="icon-envelope-alt"></i>info@demiops.com</a></li>
                    <li><a href="#"><i class="icon-phone-sign"></i>+1 210 595 0501</a></li>
                    <li><a href="http://www.demiops.com.mx"><i class="icon-globe"></i>http://www.demiops.com.mx</a></li>
                </ul>
            </div>
        </div><!--/span3-->

    </div><!--/row-fluid-->        

    <!-- Our Clients -->
    <div id="clients-flexslider" class="flexslider home clients">
        <div class="headline"><h3>Nuestros Clientes</h3></div>    
        <ul class="slides">
            <li>
                <a href="#">
                    <img src="assets/img/clients/hp_grey.png" alt="" /> 
                    <img src="assets/img/clients/hp.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/igneus_grey.png" alt="" /> 
                    <img src="assets/img/clients/igneus.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/vadafone_grey.png" alt="" /> 
                    <img src="assets/img/clients/vadafone.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/walmart_grey.png" alt="" /> 
                    <img src="assets/img/clients/walmart.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/aztec_grey.png" alt="" /> 
                    <img src="assets/img/clients/aztec.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/cisco_grey.png" alt="" /> 
                    <img src="assets/img/clients/cisco.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/cocacola_grey.png" alt="" /> 
                    <img src="assets/img/clients/cocacola.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
        </ul>
    </div><!--/flexslider-->
    <!-- //End Our Clients -->
</div><!--/container-->		
<!--=== End Content Part ===-->

