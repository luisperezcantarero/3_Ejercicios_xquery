(:
Escribe una consulta XQuery para obtener una lista de todas las vacunas administradas, junto con el país de origen de cada vacuna y el número total de dosis administradas de esa vacuna en ese país.
:)declare option output:indent "yes";

for $vacuna in distinct-values(/database/vacunacion/vacuna)
let $pais_origen := /database/vacunas[idvacuna = $vacuna]/@pais
let $total_dosis := count(/database/vacunacion[vacuna = $vacuna])
return
    <vacuna>
        <idvacuna>{$vacuna}</idvacuna>
        <pais_origen>{$pais_origen}</pais_origen>
        <total_dosis>{$total_dosis}</total_dosis>
    </vacuna>
