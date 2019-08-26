Clase 2: Leer archivos
========================================================
author: Erick Cuevas Fernández 
date: 31-08-2019
autosize: true

Tipos de archivos más usados
========================================================

**.csv**

*read.csv()*

**.json**

*library(jsonlite)*

*fromJSON()*

.txt

.xls

.xml

Ejemplo con una base de datos "Heart Diseases Databases"
========================================================

```r
names_data <- c("age", "sex", "cp", "trestbps", "chol", "fbs", "restecg",
                "thalach", "exang", "oldpeak", "slope", "ca", "thal", "num")
data_cleveland <- read.csv("Datasets/processed.cleveland.data")
colnames(data_cleveland) <- names_data

str(data_cleveland)
```

```
'data.frame':	302 obs. of  14 variables:
 $ age     : num  67 67 37 41 56 62 57 63 53 57 ...
 $ sex     : num  1 1 1 0 1 0 0 1 1 1 ...
 $ cp      : num  4 4 3 2 2 4 4 4 4 4 ...
 $ trestbps: num  160 120 130 130 120 140 120 130 140 140 ...
 $ chol    : num  286 229 250 204 236 268 354 254 203 192 ...
 $ fbs     : num  0 0 0 0 0 0 0 0 1 0 ...
 $ restecg : num  2 2 0 2 0 2 0 2 2 0 ...
 $ thalach : num  108 129 187 172 178 160 163 147 155 148 ...
 $ exang   : num  1 1 0 0 0 0 1 0 1 0 ...
 $ oldpeak : num  1.5 2.6 3.5 1.4 0.8 3.6 0.6 1.4 3.1 0.4 ...
 $ slope   : num  2 2 3 1 1 3 1 2 3 2 ...
 $ ca      : Factor w/ 5 levels "?","0.0","1.0",..: 5 4 2 2 2 4 2 3 2 2 ...
 $ thal    : Factor w/ 4 levels "?","3.0","6.0",..: 2 4 2 2 2 2 2 4 4 3 ...
 $ num     : int  2 1 0 0 0 3 0 2 1 0 ...
```



Slide With Plot
========================================================
