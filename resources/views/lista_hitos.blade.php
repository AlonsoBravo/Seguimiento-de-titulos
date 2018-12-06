@include('layouts.header')

@yield('header')

@foreach($proyecto as $pro)

<div class"row">
    <div class="col-md-12">
        <h3>Listado de los Hitos del Proyecto</h3>
    </div>
    <div class="row">
        <div class="col-md-3"><p>Nombre de proyecto:</p></div>
        <div class="col-md-3"><span>{{ $pro->PRO_NOMBRE }}</span></div>
    </div>
    <div class="row">
        <div class="col-md-3"><label>Integrantes:</label></div>
        <div class="col-md-9">
            @foreach($alumnos as $alu)
                <span>{{ $alu->USU_NOMBRE}} {{ $alu->USU_APATERNO }} {{ $alu->USU_AMATERNO}}</span><br>
            @endforeach
        </div>
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">
        <?php $sem=1; ?>
        @foreach($hitos as $hit)
            <div class="col-md-1" style="padding:10px;"><label>Semana N° {{ $sem }}</label></div>
            <div class="col-md-3" style="padding:10px;"><a href="/registro_hito/{{ $hit->HIT_ID }}-{{ $hit->HIT_PRO_ID}}" class="button">registrar hito</a></div>
        <?php $sem++; ?>
        @endforeach
</div>

@endforeach

@include('layouts.footer')

@yield('footer')
