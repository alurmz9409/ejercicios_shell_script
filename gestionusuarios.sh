#!/bin/bash
#Permita dar de alta y de baja a usuario del sistema indicados como argumento:
#./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]

#- Alta:
#El script asignará al usuario un identificativo para el sistema con el
#formato aluXXYYZ donde XX son las dos primeras letras del apellido1,
#YY son las dos primeras letras del apellido2 y Z es la inicial del nombre.
#En caso de no indicar el grupo al que pertenece, se creará un nuevo
#grupo con el mismo identificativo que el usuario.

#- Baja:
#El programa debe calcular la identificación del usuario, igual que se
#indica en el menú anterior, y proceder a dar de baja la cuenta.

#- En otro caso. Indicar “Error. La sintaxis correcta es ./gestionusuarios.sh
#alta/baja nombre apellido1 apellido2 [grupo]”

nom=${$2:0:1}
ap1=${$3:0:2}
ap2=${$4:0:2}

if [[ $# -lt 4 ]]; then
	echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
else
	if [[ $# -eq 5 ]]; then
	 if [[ $1 == "alta" ]]; then
		echo "alta"
		  useradd "alu${ap1}${ap2}${nom}"
		  groupadd $5
                  usermod -a -G $5 "alu${ap1}${ap2}${nom}"
		  echo "Usuario alu${ap1}${ap2}${nom} creado y añadido a $5"
	 elif [[ $1 == "baja" ]]; then
		  userdel "alu${ap1}${ap2}${nom}"
		  groupdel $5
                  echo "Usuario alu${ape1}${ape2}${nom} eliminado correctamente"
		else
                  echo "Formato incorrecto"
	 fi
	else
	 if [[ $1 == "alta" ]]; then
		useradd "alu${ap1}${ap2}${nom}"
          	echo "Usuario alu${ap1}${ap2}${nom} creado"
	 elif [[ $1 == "baja" ]]; then
		 userdel "alu${ap1}${ap2}${nom}"
	         echo "Usuario alu${ap1}${ap2}${nom} eliminado"
	 else
		echo "Error. Formato incorrecto"
	 fi
    fi
fi
