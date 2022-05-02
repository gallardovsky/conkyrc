#!bin/bash

# Este script instala conky y varias dependencias
# para su correcto funcionamiento, ademas de descargar conkyrc
# para mostrar la información de CPU, GPU (solo NVIDIA), red inalambrica
# almacenamiento en discos, uso de CPU y RAM por las aplicaciones
# by Gallardovsky

echo "  "
echo " -------------------- Mictlan OS -------------------- "
echo " Instalacion de dependencias para el funcionamiento   "
echo " de conky así como descarga del archivo conkyrc       "
echo " ---------------------------------------------------- "
echo "  "
    sleep 5

echo " Ten a la mano tu contraseña de superusuario o sudoer "
    sleep 2

echo "  "
echo " Actualizando repositorios . . . . . . . . . . . . . ."
    sudo apt update;
    sleep 1

echo "  "
echo " Actualizando el sistema . . . . . . . . . . . . . . ."
    sudo apt upgrade -y;
    sleep 2

echo "  "
echo " Instalando conky y dependencias . . . . . . . . . . ."
    sudo apt install conky-all lm-sensors inxi;
    sleep 2

echo " Activando los sensores en nuestro sistema . . . . . ."
    sudo sensors-detect;
    sleep 2

echo " Creando el archivo que ejecutara conky al inicio . . "
    sudo touch /user/bin/conky-start;
    sudo echo "#!/bin/bash" >> /user/bin/conky-start;
    sudo echo "sleep 10 && conky" >> /user/bin/conky-start;
    sudo chmod a+x /user/bin/conky-start;
    sleep 2

echo " "
echo " Falta agregar el archivo conky-start que se encuentra"
echo " dentro del directorio /user/bin al gestor de         "
echo " Aplicaciones de inicio de Ubuntu, las instrucciones  "
echo " mas detalladas se encuentran en mictlanos.net        "
echo " "
    sleep 4

echo " "
echo " Descargando conkyrc (archivo de configuración) . . . "
    cd;
    wget https://raw.githubusercontent.com/gallardovsky/conkyrc/main/.conkyrc;
    sleep 2

echo " "
echo " Limpiando el sistema de programas no necesarios . . ."
    sudo apt autoclean;
    sudo apt autoremove;
    sleep 2

echo " -------------------- Mictlan OS -------------------- "
echo " "
echo " Terminamos, gracias por usar este script             "
echo " siguenos en mictlanos.net                            "
echo " "
echo " -------------------- Mictlan OS -------------------- "
sleep 2

echo " "
echo "Tenga la bondad de ser feliz :) . . . . . . . . . . . "
echo " "
