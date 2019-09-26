Clase 5 "functions"
========================================================
author: Erick Cuevas-Fernández
date: 28 septiembre 2019
autosize: true

¿Qué es una función?
========================================================

```r
suma <- function(x,y){
  z <- x + y
  return(z)
}


suma(126, 789)
```

```
[1] 915
```



El mundo de los LOOPs
========================================================


```r
for (i in 1:10){
  
  print(i)
  
}
```

```
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
```



Condicionales
========================================================


```r
a <- "La resistencia"
b <- "La residencia"
c <- "La resistencia"

vectorcito <- c(a, b, c)

if(vectorcito[1] == "La residencia"){
  
  print(paste("El elemento", 1, "es La residencia"))
  
} else {
  
  print(paste("El elemento", 1, "NO es La residencia"))
  
}
```

```
[1] "El elemento 1 NO es La residencia"
```


Combinanado los superpoderes
========================================================


```r
Es_residencia <- function(x){
  
  for (i in 1:length(x)){
    
    if(x[i] == "La residencia"){
  
  print(paste("El elemento", i, "es La residencia"))
  
    } else {
  
  print(paste("El elemento", i, "NO es La residencia"))
  
    }
    
  }
  
}


Vectorsito <- c("La residencia", "La LP", "La resistencia", "La residencia")

Es_residencia(Vectorsito)
```

```
[1] "El elemento 1 es La residencia"
[1] "El elemento 2 NO es La residencia"
[1] "El elemento 3 NO es La residencia"
[1] "El elemento 4 es La residencia"
```


Ejercicio
========================================================

En equipo realiza lo siguiente:

- Carga el archivo *ensanut_suenno_16112016.csv*
- Checa *catalogo_respuestas_Cuestionario de Problemas de Suenno* las respuestas de **volronquido** y **sexo**
- Haz un loop que cambie los 0's y 1's en su respetiva respuesta en **volronquido** y otro que cambie los 1's y 2's por los generos de **sexo**.
- Grafica el **sexo** y el **IMC** 
- Grafica el **volroquido** y el **IMC**


Una funcion exclusiva para mis datos
========================================================


```r
mi_primer_superpoder <- function(df){
  
  message("Esta funcion es la onda")
  
  for (i in 1:ncol(df)){
    
    if (colnames(df)[i] == "sexo"){
      
      print(i)
      df <- df[!is.na(df[,i]), ]
      
      for (j in 1:nrow(df))  {
        
        if (df[j,i] == 1){
          
          df[j,i] <- "MASCULINO"
          
        } else{
          
          df[j,i] <- "FEMENINO"
          
        }
        
      }
      
    } 
      
    if (colnames(df)[i] == "volronquido"){
      
        print(i)
        df <- df[!is.na(df[,i]), ]
        
      for (k in 1:nrow(df)){
        
        if (df[k,i] == 0){
          
          df[k,i] <- "Negativo"
          
        } else{
          
          df[k,i] <- "Positivo"
          
          }
        
        }
      
      }
    
  }
  
  return(df)

}

# suenno <- read.csv("Users/erickCuevas/Documents/GitProyects/Curso-R-2019/Seccion_Nutricion/Cuestionario_de_Problemas_de_Suenno/ensanut_suenno_16112016.csv")
# limpios <- mi_primer_superpoder(suenno)
```

Magia oscura
========================================================

Aplica la funcion anterior a los datos de ensanut.

OTRA SOLUCION


```r
magia_oscura <- function(df){

  df$sexo[df$sexo==1] <- "MASCULINO"
  df$sexo[df$sexo==0] <- "FEMENINO"

  df$volronquido[df$volronquido==0] <- "Negativo"
  df$volronquido[df$volronquido==1] <- "Positivo"
  
  return(df)
}

# limpieza <- magia_oscura(suenno)
```


Ejercicio AVANZADO
========================================================

Genera una funcion en la que el usuario seleccione el nombre de las columnas que quiere cambiar, y basado en ello, del archivo *catalogo_respuestas_Cuestionario de Problemas de Suenno* obtenga las respuestas, y de esto modo automaticamente cambie los numeros por respuestas. 


