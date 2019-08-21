#!/usr/bin/env bash

#: AUTOR: Nidia Beltran & Dr. Heriberto Manuel Rivera 
#:        Facultad de Medicina-UAEM
#:        Laboratorio de Tecnología de Proteínas de Membrana
#:        nidibelh@gmail.com & m2mrivera@uaem.mx
#:        Enero 2014
#
#: PROGRAMA: taller1_bioinformatica_basica.sh
#: OBJETIVO: Este script permitira realizar ejercicios básicos de manipulación de archivos 
#: y carpetas desde una terminal en linux. Así como algunas rutinas básicas de bioinformatica.

clear
echo -----------------------------------------------
echo Talleres internacionales de Bioinformatica 2014
echo Taller 1         
echo Guia practica de apoyo
echo -----------------------------------------------
echo 
echo Lista de comandos basicos
echo
echo cat: Muestra archivos de texto
echo chmod: Cambia permisos de acceso
echo clear: Limpia la pantalla
echo cp: Copia archivos/carpetas
echo cut: Remueve secciones de archivos
echo file: Dice el tipo de archivo
echo grep: Busca lineas que contienen un patron
echo kill: Mata procesos en ejecucion
echo less: Muestra un archivo por pagina
echo man: Manual de un comando
echo mkdir: Genera un directorio nuevo
echo more: Muestra un archivo completo
echo mv: Mueve archivos/carpetas
echo ps: Lista procesos
echo pwd: Muestra la ruta del directorio actual
echo rm: Borra archivos/directorios
echo sed: Genera sustituciones en un archivo
echo sort: Permite ordenar la informacion de un archivo
echo time: Muestra los tiempos de ejecucion
echo top: Lista información de procesos del sistema
echo touch: Crea archivos
echo uniq: Quita repeticiones en un archivo
echo w: Muestra quien esta conectado en el servidor
echo wc: Muestra el numero de lineas, palabras y caracteres en un archivo
echo which: Muestra la ruta completa de un archivo
echo whoami: Muestra nombre del usuario
echo
echo Nota: si requieres de mayor informacion sobre el funcionamiento de estos comandos utiliza el comando "man" antes del nombre del comando. Ej: "man grep"
echo

#Elegir seguir con la guía o salir
echo Elije la opcion 1 si deseas continuar con esta guía
echo Si deseas salir utiliza Ctrl + C
echo
select item in Continuar
do
#Si el usuario elige Continuar el programa, entonces con break salimos del ciclo y continuamos con la segunda parte de la guía.
	if [ $item = Continuar ]; then 
	break
	fi
done


# Sección 1.
clear
echo Sección 1\: Haciendo, copiando y moviendo archivos \& directorios
echo -------------------------------------------------------------------

#Notas sobre los comando touch, mkdir, cp y mv
echo "touch:" Es un comando que se utiliza para generar archivos de texto
echo          Ej: touch file1.txt
echo
echo "mkdir:" Es un comando utilizado para crear un nuevo directorio o carpeta
echo          Ej: mkdir dir1
echo Opciones de "mkdir":
echo      -p Genera directorios con jerarquias
echo           Ej: mkdir -p dir1/dir2/dir3 
echo 		En este ejemplo se genero dir1 el cual contiene al dir2 y este a "su" vez
echo 		contiene el dir3
echo
echo "cp:" Es un comando para copiar archivos y directorios 
echo       Ej: cp file1.txt carpeta/de/destino/file1.txt
echo Opciones de "cp":
echo      -r Se utiliza siempre que se desea copiar una carpeta
echo      -p Se utiliza cuando se quieren conservar todos los permisos de un archivo o carpeta 
echo 
echo "mv:" Comando utilizado para mover o remonbrar archivos y directorios 
echo       Ej: mv file1.txt carpeta/de/destino/file1.txt \(moviendo archivos\)
echo           mv file1.txt file2.txt \(renombrando archivo\)
echo 
clear
# Ejercicios practicos de la sección 1
echo Ejericios Practicos Sección 1
echo --------------------------------
echo Para realizar este ejercicio es indispensable haber leido la informacion previa
echo Tendras que escribir el comando que se te pide, si este es correcto aparecera el 
echo mensaje \"Comando correcto\" y te pedira el comando del siguiente ejercicio.

# Hacer una carpeta
echo
echo a\) Genera un directorio llamado mydir
until [[ $cmd == "mkdir mydir" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
clear
# Hacer un archivo
echo
echo b\) Genera un archivo llamado myfile.txt
until [[ $cmd == "touch myfile.txt" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
clear
# Copiar un archivo
echo
echo c\) Copia el archivo myfile.txt a la carpeta /home/usuario/carpeta1
until [[ $cmd == "cp myfile.txt /home/usuario/carpeta1" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
clear
# Copiar un directorio
echo 
echo d\) Copia el directorio mydir a la carpeta /home/usuario/carpeta1
until [[ $cmd == "cp -r mydir /home/usuario/carpeta1" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
clear
# Moviendo un archivo
echo
echo e\) Mueve el directorio mydir a la carpeta /home/usuario/carpeta1
until [[ $cmd == "mv mydir /home/usuario/carpeta1" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
clear
# Renombrando un archivo
echo
echo f\) Cambia el nombre de myfile.txt a archivo1.txt
until [[ $cmd == "mv myfile.txt archivo1.txt" ]]
do
echo "Escribe el comando que utilizarias"
read cmd
done
echo "Comando correcto"
echo
echo \##############################################################
echo ¡¡YA ERES UN EXPERTO EN EL MANEJO DE ARCHIVOS Y CARPETAS\!\!
echo \##############################################################
echo
echo Nota\: Ahora ya puedes continuar con la parte 2 de esta guía
echo
end












