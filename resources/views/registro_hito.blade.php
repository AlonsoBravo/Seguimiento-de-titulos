@include('layouts.header')

@yield('header')

@foreach($proyecto as $pro)

<form class="formulario_hito" action="" method="post">
    <div class="registro clearfix">
	   <div class="datos_proyecto">
           <div class="nombre_proyecto clearfix">
               <div class="titulo"><p>Nombre de proyecto:</p></div>
               <div class="proyecto"><span>{{ $pro->PRO_NOMBRE }}</span></div>
           </div><!-- .nombre_proyecto -->
           <div class="nombres_participantes clearfix">
               <div class="titulo"><span>Integrantes: </span></div>
               <div class="nombres">
                   @foreach($alumnos as $alu)
                        <span>{{ $alu->USU_NOMBRE }} {{ $alu->USU_APATERNO }} {{ $alu->USU_AMATERNO }}</span>
                   @endforeach
               </div>
           </div><!-- .nombres_participantes -->
           <div class="seccion_curso clearfix">
               <div class="titulo"><span>Seccion curso:</span></div>
               <div class="nombre_seccion"><span>Seccion {{ $pro->PRO_SECCION }}</span></div>
           </div><!-- .seccion_curso -->
           <div class="fecha_ultimo_hito clearfix">
               <div class="titulo"><span>Fecha último hito:</span></div>
               <div class="fecha"><span>"dd-mm-yyyy"</span></div>
           </div><!-- fecha_ultimo_hito -->
           <div class="fecha_entrega_hito clearfix">
               <div class="titulo"><span>Fecha entrega hito:</span></div>
               <div class="fecha"><input type="date"></div>
           </div><!-- .fecha_entrega_hito -->
           <div class="estado_hito">
				<div class="titulo"><span>Estado de hito: </span></div>
				<div class="estado">
                    <select class="opcion">
                        <option value="">Escoja un estado</option>
                        <option value="entregado">Entregado</option>
                        <option value="atrasado">Atrasado</option>
                        <option value="no_entregado">No entregado</option>
                    </select>
               </div>
           </div><!-- .estado_hito -->
           <div class="valoracion_hito clearfix">
               <div class="titulo"><span>Valoración: </span></div>
               <div class="valoracion">
                   <select class="opcion">
                       <option value="">Escoja un valor</option>
                       <option value="5">5%</option>
                       <option value="10">10%</option>
                       <option value="15">15%</option>
                       <option value="20">20%</option>
                       <option value="25">25%</option>
                       <option value="30">30%</option>
                       <option value="35">35%</option>
                       <option value="40">40%</option>
                       <option value="45">45%</option>
                       <option value="50">50%</option>
                       <option value="55">55%</option>
                       <option value="60">60%</option>
                       <option value="65">65%</option>
                       <option value="70">70%</option>
                       <option value="75">75%</option>
                       <option value="80">80%</option>
                       <option value="85">85%</option>
                       <option value="90">90%</option>
                       <option value="95">95%</option>
                       <option value="100">100%</option>
                   </select>
               </div>
           </div><!-- .valoracion -->
        </div><!-- .datos_proyecto -->
        <div class="registo_hito">
            <div class="descripcion_hito">
                <span>Ingresar hito: </span><br>
                <textarea class="texto"></textarea>
            </div><!-- .registro_hito -->
            <div class="feedback">
                <span>Ingrese feedback: </span><br>
                <textarea class="texto"></textarea>
            </div><!-- .feedback -->
            <div class="guardar_hito">
                <button type="submit" class="guardar button">Guardar Hito</button>
            </div><!-- .guardar_hito -->
        </div><!-- .registo_hito -->
    </div><!-- .registro -->
</form><!-- .formulario_hito -->
@endforeach
@include('layouts.footer')

@yield('footer')
