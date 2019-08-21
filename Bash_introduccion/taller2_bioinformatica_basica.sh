#!/usr/bin/env bash

#: AUTOR: Nidia Beltran & Dr. Heriberto Manuel Rivera 
#:        Facultad de Medicina-UAEM
#:        Laboratorio de Tecnología de Proteínas de Membrana
#:        nidibelh@gmail.com & m2mrivera@uaem.mx
#:        Enero 2014
#
#: PROGRAMA: taller2_bioinformatica_basica.sh
#: OBJETIVO: Este script permitira realizar ejercicios básicos de manipulación de archivos 
#: y carpetas desde una terminal en linux. Así como algunas rutinas básicas de bioinformatica.

clear
echo -----------------------------------------------
echo Talleres internacionales de Bioinformatica 2014
echo Taller 1         
echo Guia practica de apoyo
echo -----------------------------------------------
echo 
# Sección 2
echo Sección 2\: Cambiando permisos
echo ---------------------------------------------
echo
echo
#Notas sobre los permisos de archivos y carpetas
echo Todo archivo y directorio tiene tres niveles de permisos de acceso\:
echo
echo 1.- Los que se aplican al propietario del archivo
echo 2.- Los que se aplican al grupo que tiene el archivo
echo 3.- Los que se aplican a todos los usuarios del sistema 
echo 
echo Podemos ver los permisos cuando utilizamos el comando  \ls -l
echo el cual nos despliega la siguiente información
echo
echo $> \ls -l
echo total 260
echo drwxr-xr-x.  2 nbeltran nbeltran  4096 feb  5 16\:13 Descargas
echo drwxr-xr-x.  9 nbeltran nbeltran  4096 feb  3 21\:44 Documentos
echo drwxr-xr-x. 23 nbeltran nbeltran  4096 ene 31 17\:47 Música
echo drwxrwxr-x.  6 nbeltran nbeltran  4096 ene 31 22\:05 Programas
echo drwxr-xr-x.  2 nbeltran nbeltran  4096 ene 20 15\:14 Público
echo -rwx------.  1 nbeltran LTPM       356 feb  3 17\:58 script1.sh
echo drwxrwxr-x.  3 nbeltran LTPM      4096 feb  3 14\:40 script2.sh
echo -rwx------.  1 nbeltran LTPM      5458 feb  5 16\:08 script3.sh
echo -rw-rw-r--.  1 nbeltran Maestria 326234 feb  3 22\:46 texto.pdf
echo
echo En este listado 
echo La columna 1 \(drwxrwxrwx\) muestra el tipo de archivo y sus permisos
echo La columna 2 muestra los enlaces al archivo
echo La columna 3 muestra al propietario del archivo
echo La columna 4 muestra al grupo al que pertenece el archivo
echo Las siguientes cuatro columnas son el tamaño, la fecha y hora de última modificación
echo La ultima columna muestra el nombre del archivo o directorio
echo
echo El primer caracter al extremo izquierdo representa el tipo de archivo y acontinuacion
echo se muestran los posibles valores que este puede presentar\:
echo
echo - Un guión representa un archivo común \(txt, mp3, pdf, jpg, html, etc\)
echo d Representa un directorio
echo l Representa un enlace o acceso directo
echo b Representa un archivo binario o ejecutable
echo 
echo Los siguientes 9 caracteres restantes, representan los permisos del archivo y deben verse 
echo en grupos de 3.
echo 
echo Y \su significado es el siguiente\:
echo
echo rwx rxw rxw
echo --- --- ---
echo  1   2   3
echo 
echo Los tres primeros representan los permisos para el propietario del archivo. 
echo Los tres siguientes son los permisos para el grupo del archivo y los tres últimos son los 
echo permisos para otros. 
echo
echo El significado para las letras es el siguiente\:
echo r = Lectura \(\read\)
echo \w = Escritura \(\write\)
echo x = Ejecutable \(execution\)
echo 
echo Permisos en formato numérico octal
echo -----------------------------------
echo
echo La combinacion de valores de cada grupo de los usuarios forma un número octal, 
echo el bit x es 20 es decir 1, el bit w es 21 es decir 2, el bit r es 22 es decir 4, 
echo tenemos entonces:
echo
echo r = 4
echo \w = 2
echo x = 1
echo 
echo La combinación de bits encendidos o apagados en cada grupo da ocho posibles combinaciones 
echo de valores, es decir la suma de los bits encendidos\:
echo 
echo - - -	 = 0	 no se tiene ningún permiso
echo - - x	 = 1	 solo permiso de ejecución
echo - \w -	 = 2	 solo permiso de escritura
echo - \w x	 = 3	 permisos de escritura y ejecución
echo r - -	 = 4	 solo permiso de lectura
echo r - x	 = 5	 permisos de lectura y ejecución
echo r \w -	 = 6	 permisos de lectura y escritura
echo r \w x	 = 7	 todos los permisos establecidos, lectura, escritura y ejecución
echo 
echo Cuando se combinan los permisos del usuario, grupo y otros, se obtienen un número de tres 
echo cifras que conforman los permisos del archivo o del directorio. Esto es más fácil visualizarlo 
echo con algunos ejemplos\:
echo
echo rw-------	600	El propietario tiene permisos de lectura y escritura.
echo rwx--x--x	711	El propietario lectura, escritura y ejecución, el grupo y otros solo ejecución.
echo rwxr-xr-x	755	El propietario lectura, escritura y ejecución, el grupo y otros pueden leer y ejecutar el echo archivo.
echo rwxrwxrwx	777	El archivo puede ser leido, escrito y ejecutado por quien sea.
echo r--------	400	Solo el propietario puede leer el archivo, pero ni el mismo puede modificarlo o ejecutarlo.
echo rw-r-----	640	El usuario propietario puede leer y escribir, el grupo puede leer el archivo y otros no pueden hacer nada.
echo 
echo Cambiando permisos con el comando \chmod
echo ------------------------------------------
echo 
echo Habiendo entendido lo anterior, ahora será fácil cambiar los permisos de cualquier archivo 
echo o directorio, usando el comando \chmod \(change mode\)\; el cual funciona de la sig. manera\:
echo \chmod permisos archivo[s] nombrearchivo
echo 
echo Ejemplos\:
echo $> \chmod 755 reporte1.txt
echo $> \chmod 511 respaldo.sh
echo 
echo Nota: Si requires mas información de \chmod puedes accesar el manual utilizando el comando \man \chmod
echo
echo
#Elegir seguir con la guía o salir
echo Elije la opcion 1 si deseas continuar con esta guía
echo Si deseas salir utiliza Ctrl + C
echo
select item in Continuar
do
#Si el usuario elige Continuar el programa, entonces con break salimos del ciclo y continuamos con la parte de ejercicios practicos
	if [ $item = Continuar ]; then 
	break
	fi
done

clear
# Ejercicio 1.1 Hacer un directorio
echo Ejericios Practicos Sección 1
echo --------------------------------
echo
echo Para realizar este ejercicio es indispensable haber leido la informacion previa
echo Tendras que escribir el comando que se te pide, si este es correcto aparecera el 
echo mensaje \"Comando correcto\" y te pedira el comando de la siguiente actividad.

clear
# Cambiando permisos
echo
echo a\) Cambia a 700 los permisos del archivo myfile.txt
until [[ $cmd == "chmod 700 myfile.txt" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
clear
# Cambiando permisos
echo
echo b\) Cambia a 764 los permisos del archivo myfile.txt
until [[ $cmd == "chmod 764 myfile.txt" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
clear
# Cambiando permisos
echo
echo c\) Cambia los permisos de myfile.txt para que sea unicamente ejecutable para el usuario, grupo y otros 
until [[ $cmd == "chmod 111 myfile.txt" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
clear
# Cambiando permisos
echo
echo d\) Queremos que la carpeta dir1 tenga los permisos rwx r-x r-x
until [[ $cmd == "chmod 755 dir1" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
clear
# Cambiando permisos
echo
echo e\) Queremos que la carpeta dir1 tenga los permisos r-x r-- r--
until [[ $cmd == "chmod 544 dir1" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
echo
echo \#####################################################################
echo ¡¡YA ERES UN EXPERTO CAMBIANDO LOS PERMISOS DE ARCHIVOS Y CARPETAS\!\!
echo \#####################################################################
echo
echo Nota\: Ahora ya puedes continuar con la parte 3 de esta guía
echo
end
