Clase 3
========================================================
author: Erick Cuevas Fernández
date: 05 septiembre 2019
autosize: true

Análisis exploratorio de datos
========================================================
*Paso 1. Conocer estructura de datos*

*Paso 2. Obtener y leer datos*

**Paso 3. ¿Qué me dicen mis datos?**


```r
# devtools::install_github("Erickcufe/seekerBio")

# sleep_disorder <- seekerBio::seeker_gwas("Sleep Disorder")

# write.csv(sleep_disorder, "Clase_3/sleep_disorder.csv")

# paths <- seekerBio::seeker_gen_pathway(sleep_disorder$GeneSymbol)

# write.csv(paths, "Clase_3/Paths_sleep.csv")

# Freq <- seekerBio::seeker_snp_freq(sleep_disorder$SNPS)

# write.csv(Freq, "Clase_3/Freq_sleep.csv")
```

Para afianzar lo aprendido en la clase anterior:

- Lee/carga el archivo *sleep_disorder.csv*
- Lee/carga el archivo *Paths_sleep.csv*
- Lee/carga el archivo *Freq_sleep.csv*
- Lee/carga el archivo de la carpeta **Seccion_nutricion**: *Cuestionario_de_Problemas_de_Suenno*

Recuerda que con **foreing::read.dta(file.dta)** tambien lo puedes hacer

Para calentar motores...  Missing Values
========================================================
Un vistazo a los datos









```
Error in file(file, "rt") : cannot open the connection
```
