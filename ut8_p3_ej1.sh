#!/bin/bash
#Muestre la lista de los últimos usuarios que iniciaron sesión, incluidas
#las direcciones IP Origen. (Solo debes mostrar las líneas en
#las que aparece una IP) Tip: Uso del comando last y egrep.
last -i | grep -E '[0-9]{1,3}\.[0-9]{2,3}\.[0-9]{2,3}\.[0-9]{2,3}'
