Clase 2: Leer archivos
========================================================
author: Erick Cuevas Fernández 
date: 31-08-2019
autosize: true
Datos de todas las formas y colores
========================================================
**json**

`{"menu": {

  "id": "file",
  
  "value": "File",
  
  "popup": {
  
    "menuitem": [
    
      {"value": "New", "onclick": "CreateNewDoc()"},
      
      {"value": "Open", "onclick": "OpenDoc()"},
      
      {"value": "Close", "onclick": "CloseDoc()"}
      
    ]
    
  }
  
} }`


Datos de todas las formas y colores
========================================================
**XML**

`<menu id="file" value="File">

  <popup>
  
    <menuitem value="New" onclick="CreateNewDoc()" />
    
    <menuitem value="Open" onclick="OpenDoc()" />
    
    <menuitem value="Close" onclick="CloseDoc()" />
    
  </popup>
  
</menu>` 

**csv**

28,1,2,130,132,0,2,185,0,0,?,?,?,0
29,1,2,120,243,0,0,160,0,0,?,?,?,0
29,1,2,140,?,0,0,170,0,0,?,?,?,0
30,0,1,170,237,0,1,170,0,0,?,?,6,0
31,0,2,100,219,0,1,150,0,0,?,?,?,0
32,0,2,105,198,0,0,165,0,0,?,?,?,0
32,1,2,110,225,0,0,184,0,0,?,?,?,0
32,1,2,125,254,0,0,155,0,0,?,?,?,0
33,1,3,120,298,0,0,185,0,0,?,?,?,0
34,0,2,130,161,0,0,190,0,0,?,?,?,0
34,1,2,150,214,0,1,168,0,0,?,?,?,0
34,1,2,98,220,0,0,150,0,0,?,?,?,0
35,0,1,120,160,0,1,185,0,0,?,?,?,0
35,0,4,140,167,0,0,150,0,0,?,?,?,0
35,1,2,120,308,0,2,180,0,0,?,?,?,0
35,1,2,150,264,0,0,168,0,0,?,?,?,0

Datos de todas las formas y colores
========================================================
Glucose is the long-established, obligatory fuel for brain that fulfills many
      critical functions, including ATP production, oxidative stress management, and
      synthesis of neurotransmitters, neuromodulators, and structural components.
      Neuronal glucose oxidation exceeds that in astrocytes, but both rates increase in
      direct proportion to excitatory neurotransmission; signaling and metabolism are
      closely coupled at the local level. Exact details of neuron-astrocyte
      glutamate-glutamine cycling remain to be established, and the specific roles of
      glucose and lactate in the cellular energetics of these processes are debated.
      Glycolysis is preferentially upregulated during brain activation even though
      oxygen availability is sufficient (aerobic glycolysis). Three major pathways,
      glycolysis, pentose phosphate shunt, and glycogen turnover, contribute to
      utilization of glucose in excess of oxygen, and adrenergic regulation of aerobic 
      glycolysis draws attention to astrocytic metabolism, particularly glycogen
      turnover, which has a high impact on the oxygen-carbohydrate mismatch. Aerobic
      glycolysis is proposed to be predominant in young children and specific brain
      regions, but re-evaluation of data is necessary. Shuttling of glucose- and
      glycogen-derived lactate from astrocytes to neurons during activation,
      neurotransmission, and memory consolidation are controversial topics for which
      alternative mechanisms are proposed. Nutritional therapy and vagus nerve
      stimulation are translational bridges from metabolism to clinical treatment of
      diverse brain disorders.

¿Y esto para que me va a servir?
========================================================

![dudas](imagenes/c21.jpg)


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

Una vez cargados, nombra las columnas usando el vector *names_data*

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

response <- jsonlite::fromJSON(url_chem)

# str(response)

archivo_sections<-response$Record$Section$Section
```

Desde JSON obtenemos una lista o un data.frame, y ya que sabemos manejar listas, podemos empezar a obtener los datos que deseamos.

Un respiro de 15 minutos para practicar
========================================================

Del archivo JSON que se obtuvo, obten "IUPAC name":

**4-(2-aminoethyl)benzene-1,2-diol**

¿A qué molecula pertenece el **ID** que buscamos?

¿Qué más información hay dentro de *archivo_sections*?

XML, solo un pequeño ejemplo
========================================================


```r
library(XML)
url<-"datasets/cd_catalog.xml"
#xmlParse agrega ubicacion al fichero
xmldoc<-xmlParse(url)  #XMLInternalDocument 
#Esto nos coloca en el nodo raiz
rootnode<-xmlRoot(xmldoc) #Para extraer
rootnode[1]
```

```
$CD
<CD>
  <TITLE>Empire Burlesque</TITLE>
  <ARTIST>Bob Dylan</ARTIST>
  <COUNTRY>USA</COUNTRY>
  <COMPANY>Columbia</COMPANY>
  <PRICE>10.90</PRICE>
  <YEAR>1985</YEAR>
</CD> 

attr(,"class")
[1] "XMLInternalNodeList" "XMLNodeList"        
```

```r
#Primera diferencia con CSV es que XML hay que extraer unos por uno los datos
#Para hacer data.frame con XML, se extrae cada valor del valor raiz
cds_data<-xmlSApply(rootnode,function(x)xmlSApply(x,xmlValue)) #Recorre todos los nodos y aplica la función, devuelve una matriz con la información del nodo raiz
#Ahora se procesa un poco, se hace una transposición (t), y especificarle que Row no tiene nombres
cds.catalog<-data.frame(t(cds_data),row.names=NULL)
head(cds.catalog,2)
```

```
             TITLE       ARTIST COUNTRY     COMPANY PRICE YEAR
1 Empire Burlesque    Bob Dylan     USA    Columbia 10.90 1985
2  Hide your heart Bonnie Tylor      UK CBS Records  9.90 1988
```

```r
cds.catalog[1:5,]
```

```
                TITLE          ARTIST COUNTRY        COMPANY PRICE YEAR
1    Empire Burlesque       Bob Dylan     USA       Columbia 10.90 1985
2     Hide your heart    Bonnie Tylor      UK    CBS Records  9.90 1988
3       Greatest Hits    Dolly Parton     USA            RCA  9.90 1982
4 Still got the blues       Gary More      UK Virgin redords 10.20 1990
5                Eros Eros Ramazzotti      EU            BMG  9.90 1997
```

Otro ejemplo
========================================================

```r
population_url<-"datasets/WorldPopulation-wiki.htm"
tables<-readHTMLTable(population_url) #Parsea la pagina web, y nos arroja las tablas de la pagina web

most_populated<-tables[[6]]
head(most_populated,3)
```

```
  Rank Country / Territory    Population              Date
1    1       China[note 4] 1,385,310,000 September 9, 2017
2    2               India 1,321,010,000 September 9, 2017
3    3       United States   325,732,000 September 9, 2017
  Approx. % of world\npopulation Source
1                          18.3%   [91]
2                          17.5%   [92]
3                          4.31%   [93]
```

```r
custom_table<-readHTMLTable(population_url,which=6) #Si ya tengo localizada la tabla, me arroja todos los datos de esta
custom_table
```

```
   Rank Country / Territory    Population              Date
1     1       China[note 4] 1,385,310,000 September 9, 2017
2     2               India 1,321,010,000 September 9, 2017
3     3       United States   325,732,000 September 9, 2017
4     4           Indonesia   261,600,000  October 31, 2016
5     5            Pakistan   208,848,000 September 9, 2017
6     6              Brazil   207,985,000 September 9, 2017
7     7             Nigeria   188,500,000  October 31, 2016
8     8          Bangladesh   163,106,000 September 9, 2017
9     9              Russia   146,773,226      June 1, 2017
10   10               Japan   126,750,000      July 1, 2017
   Approx. % of world\npopulation Source
1                           18.3%   [91]
2                           17.5%   [92]
3                           4.31%   [93]
4                           3.46%   [94]
5                           2.76%   [95]
6                           2.75%   [96]
7                           2.49%   [97]
8                           2.16%   [98]
9                           1.94%   [99]
10                          1.68%  [100]
```

**OJO: este formato esta dejando de ser usado** 

TXT
========================================================

```r
texto <- readLines("Datasets/ejemplo.txt")
head(texto)
```

```
[1] "Glucose is the long-established, obligatory fuel for brain that fulfills many"          
[2] "      critical functions, including ATP production, oxidative stress management, and"   
[3] "      synthesis of neurotransmitters, neuromodulators, and structural components."      
[4] "      Neuronal glucose oxidation exceeds that in astrocytes, but both rates increase in"
[5] "      direct proportion to excitatory neurotransmission; signaling and metabolism are"  
[6] "      closely coupled at the local level. Exact details of neuron-astrocyte"            
```


