#!/bin/bash
#busque cualquier fichero que pueda ser modificado por cualquier usuario
#(--- --- rwx) y guarde la lista de ficheros con la ruta exacta en el archivo
#archivos_peligrosos.txt (Debes utilizar expresiones regulares)
ls -lR /home/* | egrep "^.......rwx" > archivos_peligrosos.txt
cat archivos_peligrosos.txt | more
