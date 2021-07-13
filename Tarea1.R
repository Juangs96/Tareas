#Tarea 1.

#Punto 1.
 

vec_estudiantes = c("Juan","Maria","Viky","Cris","Bryan","Wal","Rosa","Vic","Jos","Jer")
vec_notas = c(2,4,6,8,10,1,3,5,7,10)

fin = length(vec_estudiantes)
vec_estado = c()

for (i in 1:fin) {
  if(vec_notas[i]>=7) {
    y = "Aprobado"
    vec_estado = c(vec_estado,y)
  } else {
   y = "Reprobado"
   vec_estado = c(vec_estado,y)
  } }
print(vec_estado)

tabla_datos = data.frame(vec_estudiantes,vec_notas,vec_estado)
names(tabla_datos) = c("Nombre","Nota","Status prueba")
print(tabla_datos)
plot(x = as.factor(tabla_datos$`Status prueba`))
#La mayoria de los estudiates reprobaron la prueba

#Punto 2.

var_colum = BaseTarea1
var_colum$VentasTotales = var_colum$Cantidad * var_colum$Precio_unidad
View(var_colum)

var_filt = filter(var_colum,var_colum$Categoria == "Futbol")

var_group = var_colum%>%group_by(var_colum$Categoria)%>%summarise(Q_ProductosxCategoria = n())

var_arrege = var_colum%>%arrange(desc(var_colum$VentasTotales))

var_mutate = mutate(var_colum, IVA = (var_colum$VentasTotales*0.13))

var_select = var_colum%>%select(Producto,VentasTotales)

#Punto 3.

salarios=c(432.21,239.48,249.94,373.22,233.86,366,331.11,258.86,349.20,31.60)

mean(salarios)
sd(salarios)
max(salarios)
min(salarios)

#Punto 4.

Empleados = Bases_de_datos_Tarea_1_Empleados_
Facturas = Bases_de_datos_Facturas

joinfact = merge(Empleados,Facturas, by = "EmployeeID")

varFacturas = joinfact%>% group_by(EmployeeID,LastName) %>% summarise(Q_Facturas=n())
View(varFacturas)

#Punto 5.

var_sacoscafe = c(7, 6, 5, 8, 7, 7, 7, 5, 6, 8)
sd(var_sacoscafe)

#Punto 6.

var_percentil = quantile(var_sacoscafe, probs = seq(0, 1, 0.25))

#Punto 7.

#Stringr es un paquete para la manipulación de cadenas o caracteres

#96
