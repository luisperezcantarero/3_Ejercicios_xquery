(:Escribe una consulta XQuery que encuentre el número total de dosis administradas de la vacuna "DTaP".:)

let $total_dosis := sum(for $vacuna in /database/vacunas[idvacuna = '11111' and nombre = 'DTaP']

return count(/database/vacunacion[vacuna = $vacuna/idvacuna]/dosis))

return $total_dosis