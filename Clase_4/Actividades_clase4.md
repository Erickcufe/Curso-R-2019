Actividades_clase4
========================================================
author: Erick Cuevas Fernandez
date: 20 septiembre 2019
autosize: true

Un poco de ggplot
========================================================
Cargamos datos de la clase pasada y cargamos archivos nuevos de la carpeta *clase4*


```r
# ensanut <- read.csv("Seccion_Nutricion/Cuestionario_de_Problemas_de_Suenno/ensanut_suenno_16112016.csv")
# gwas_sleep <- read.csv("Clase_3/sleep_disorder.csv")
# paths <- read.csv("Clase_3/Paths_sleep.csv")
# freq <- seekerBio::seeker_snp_freq(gwas_sleep$SNPS)
# write.csv(freq, "Clase_4/Freq.csv")
# freqs_ordered <- seekerBio::seeker_snp_freq_format(freq)
# write.csv(freqs_ordered, "Clase_4/freq_format.csv")
# freq_ordered <- read.csv("Clase_4/Freq.csv")
```


**RECUERDA QUE EL DATA SHEET DE GGPLO2 SE ENCUENTRA EN LA PAGINA DEL CURSO**

Tambien se encuentra en la carpeta de la clase 4. **Será tu guia para esta clase** 

RECUERDA
========================================================

- Checa la estructura de tus datos.  *str()*
- Observa de que variables se componen y de que tipo (numerico, factor, caracter).  *summary()*
- Si hay necesidad cambia el tipo de dato
- Limpia los datos antes de iniciar

HOY VAMOS A TRABAJAR EN UN R Script
========================================================

**ACTIVIDAD 1, en grupos de 2 personas:**

- Realiza un grafico de puntos con el p-value de los SNPs del *gwas_sleep* y otro con el p-value de los pathways de *paths*
- Realiza un grafico de barras con alguna variable de archivo *ENSANUT*
- Realiza un grafico de distribucion de las frecuencias alelicas en poblacion EUROPEA y AMERICANA del archivo *freq_ordered*
- Realiza un grafico boxplot de alguna variable del archivo *ENSANUT*
- Realiza un grafico de lineas con las frecuencias alelicas de todo el mundo del archivo *freq_ordered* de un solo SNP

TUNEANDO LOS GRAFICOS
========================================================

- Intenta agregar un tema al graficos con *theme_bw()* por ejemplo.
- Agrega un titulo a cada grafico
- Agrega *theme(axis.text.x = element.text(angle = 90, size = 20))* y observa que sucede
- Representa en un grafico de puntos la frecuencia alelilica menor y ancestral de cada SNP de todas las poblaciones, y en el mismo grafico representa el alelo que cambia *Minor*, puedes hacerlo con *size* o *color* dentro del parametro *aes()*.
- Cambia de color todos los graficos que haz hecho
- Agrega *coord_flip()* a algun grafico y observa lo que sucede

**¿Dudas?**



