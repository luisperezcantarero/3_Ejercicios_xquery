(:Modifica la consulta anterior para incluir también el país de origen de la vacuna "DTaP" y devuelve el resultado en una etiqueta país con el número total de dosis como atributo.:)

let $total_dosis := sum(for $vacuna in /database/vacunas[idvacuna = '11111' and nombre = 'DTaP']

return count(/database/vacunacion[vacuna = $vacuna/idvacuna]/dosis))

let $pais_origen := distinct-values(/database/vacunas[idvacuna = '11111' and nombre = 'DTaP']/@pais)
return <pais total_dosis="{$total_dosis}">{$pais_origen}</pais>