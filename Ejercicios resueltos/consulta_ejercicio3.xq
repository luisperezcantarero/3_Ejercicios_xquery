(:
Escribe una consulta XQuery para obtener el nombre y descripción dentro de una etiqueta de todas las vacunas administradas a pacientes cuyo apellido1 comience con la letra "C".
:)declare option output:indent "yes";

for $vacuna in /database/vacunas
for $vacunacion in /database/vacunacion
let $paciente := /database/pacientes[codigo = $vacunacion/paciente]
where starts-with($paciente/apellido1, "C")
    and $vacuna/idvacuna = $vacunacion/vacuna
return
    <vacuna>
        <nombre>{$vacuna/nombre/text()}</nombre>
        <descripcion>{$vacuna/descripcion/text()}</descripcion>
    </vacuna>

