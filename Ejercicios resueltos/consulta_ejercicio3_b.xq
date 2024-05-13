(:
Modifica la consulta para que presente la fecha de nacimiento de cada paciente junto con la fecha de administración de la vacuna.
:)declare option output:indent "yes";

for $v in /database/vacunacion
let $p := /database/pacientes[codigo = $v/paciente]
let $va := /database/vacunas[idvacuna = $v/vacuna]
where starts-with($p/apellido1, "C")
return <vacuna>{$va/(nombre, descripcion), $p/(nombre, apellido1, apellido2, fechanacimiento), $v/fechaadministracion}</vacuna>


