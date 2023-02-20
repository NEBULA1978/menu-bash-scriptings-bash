#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola"
    echo "6. Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola y copiar de la linea 1 a 10 y guarda en archivo"
    echo "7. Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola y copiar de la linea (que le digamos) a (a la linea que le decimos) y guarda en archivo"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo "Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola"
        ./menubase4-completo.sh
        read foo
        ;;
    6)
        echo "Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola y copiar de la linea 1 a 10 y guarda en archivo"
        ./menubase4-completo-while-case-copiar-lineas-archivo.sh
        read foo
        ;;
    7)
        echo "Mostrar archivos de home o del sistema para poder leer cualquier archivo por consola y copiar de la linea (que le digamos) a (a la linea que le decimos) y guarda en archivo"
        ./menubase4-completo-while-case-copiar-lineas-archivo2.sh
        read foo
        ;;

    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
