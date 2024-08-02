#select * from tbl_nivel_educacion
#insert into tbl_nivel_educacion values (1, 'Primaria')
#insert into tbl_nivel_educacion (id, descripcion) values (2, 'Secundaria'), (3, 'Terciaria'), (4, 'Universitaria'), (5, 'PHD'), (0, 'Ninguna')

#insert into tbl_gerencias values (1, 'Gerencia 1', 'CABA'), (2, 'Gerencia 2', 'San Martín'), (3, 'Gerencia 3', 'Castellar'), (4, 'Gerencia 4', 'Ramos')
#select * from tbl_gerencias

#insert into tbl_empleados values
#(1, 'Juan', 'Perez', 1, 100000, 1),
#(2, 'Pedro', 'García', 1, 150000, 2),
#(3, 'Mario', 'Gonzalez', 1, 200000, 3),
#(4, 'Laura', 'Gomez', 1, 220000, 4),
#(5, 'María', 'Rodríguez', 2, 100000, 1),
#(6, 'Pablo', 'González', 2, 150000, 2),
#(7, 'Julieta', 'López', 3, 200000, 3),
#(8, 'Carlos', 'Fernández', 3, 100000, 1),
#(9, 'Julia', 'Martínez', 3, 200000, 2),
#(10, 'Francisco', 'Díaz', 4, 200000, 2)
#select * from tbl_empleados

-- select emp.id_gerencia as IdGerencia, sum(emp.salario) as TotSalario
-- from tbl_empleados emp
-- group by IdGerencia

select tb_emp.id, tb_emp.nombre, tb_emp.apellido, totales.IdGerencia, totales.TotSalario
from tbl_empleados tb_emp
inner join
(
	select emp.id_gerencia as IdGerencia, sum(emp.salario) as TotSalario
	from tbl_empleados emp
	group by IdGerencia
)totales
on tb_emp.id_gerencia = totales.IdGerencia
where totales.TotSalario > 430000

