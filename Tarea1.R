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

