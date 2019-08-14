Clase_introduccion
========================================================
author: Erick Cuevas
date: 24 agosto 2019
autosize: true

Antes de iniciar   
========================================================
 **Descargar e instalar** 


- R 3.6.1 si es posible https://cran.itam.mx
- RStudio Desktop 1.2.1335 https://www.rstudio.com/products/rstudio/download/
- Clone github https://github.com/Erickcufe/Curso-R-2019.git
- Generar una cuenta en GitHub https://github.com   

Para clonar un repositorio en *R usethis::use_course("Usuario/Repositorio")*
Para clonar un repositorio desde la Terminal *git clone URL.git* 

RStudio
========================================================
# 4 interfaces 
Editar código, ejecutar código, visualizar, y espacio de datos. 

Puedes acceder a la pagina del curso (https://erickcufe.github.io/teaching.html) para obtener más información de los comandos para usar RStudio con mayor facilidad y rápidez. Asi como libros y comunidades de R.


# A poner las reglas

![Rules](rules_1000x800.jpg)



Primeros pasos
========================================================
Tipos de datos


```r
class(14)
```

```
[1] "numeric"
```

```r
class("Amarillo")
```

```
[1] "character"
```

```r
class(TRUE)
```

```
[1] "logical"
```

```r
class(factor(c("verde", "azul")))
```

```
[1] "factor"
```

Estructuras basicas para almacenar los datos
========================================================
¿Qué es un vector?

¿Qué puede almacenar un vector?


```r
x <- c("a", "b", "c")
typeof(x)
```

```
[1] "character"
```

```r
length(x)
```

```
[1] 3
```

```r
class(x)
```

```
[1] "character"
```

¿Esto tambien es un vector?

```r
b <- c(c(1,2,3), c("a","b"))
```



Acceder a un vector
========================================================


```r
x <- c("Montserrat", "Nidia", "Armando", "Oscar", "Diego")
x[3]
```

```
[1] "Armando"
```

```r
x[c(1,2,3)]
```

```
[1] "Montserrat" "Nidia"      "Armando"   
```

```r
x[1:3]
```

```
[1] "Montserrat" "Nidia"      "Armando"   
```

```r
x[-3]
```

```
[1] "Montserrat" "Nidia"      "Oscar"      "Diego"     
```

Tambien podemos agregar datos a nuestros vectores

```r
x[6] <- "Fernanda"
x
```

```
[1] "Montserrat" "Nidia"      "Armando"    "Oscar"      "Diego"     
[6] "Fernanda"  
```

```r
x <- x[-6]
x
```

```
[1] "Montserrat" "Nidia"      "Armando"    "Oscar"      "Diego"     
```


Tu turno
========================================================

  1. ¿Qué pasa si agrego un número a un vector de caracteres?
  
  2. Crea un vector con el nombre *mi_primer_vector* con 5 datos numericos, 5 logicos y 5 caracteres.
  
  3. Selecciona las posiciones 3, 6, 9 de el vector creado

