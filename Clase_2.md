Clase 2: Leer archivos
========================================================
author: Erick Cuevas Fernández 
date: 31-08-2019
autosize: true

Tipos de archivos más usados
========================================================

**.csv**

`read.csv(file, header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "", ...)`

`read.csv2(file, header = TRUE, sep = ";", quote = "\"", dec = ",", fill = TRUE, comment.char = "", ...)`

**Tambien podemos leer archivos separados por espacio y tabuladores:**

- `read.table(file, header = FALSE, sep = "", quote = "\"'", dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"), row.names, col.names, as.is = !stringsAsFactors, na.strings = "NA", colClasses = NA, nrows = -1, skip = 0, check.names = TRUE, fill = !blank.lines.skip, strip.white = FALSE, blank.lines.skip = TRUE, comment.char = "#", allowEscapes = FALSE, flush = FALSE, stringsAsFactors = default.stringsAsFactors(), fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)`

- `read.delim(file, header = TRUE, sep = "\t", quote = "\"", dec = ".", fill = TRUE, comment.char = "", ...)`

- `read.delim2(file, header = TRUE, sep = "\t", quote = "\"", dec = ",", fill = TRUE, comment.char = "", ...)`



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


**Ejercicio:**

Carga los archivos como csv:

- processed.hungarian.data
- processed.switzerland.data
- processed.va.data

Una vez caegados, nombra las columnas usando el vector *names_data*

JSON
========================================================
**.json**


```r
library(jsonlite)
```

*fromJSON()*


```r
id <- 681  
url_chem <- paste0("https://pubchem.ncbi.nlm.nih.gov/rest/pug_view/data/compound/"
                   ,id,
                   "/json")

response <- fromJSON(url_chem)

# str(response)

archivo_sections<-response$Record$Section$Section
```

Desde JSON obtenemos una lista o un data.frame, y ya que sabemos manejar listas, podemos empezar a obtener los datos que deseamos.
