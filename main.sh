#!/bin/bash


################################################
## Aca definimos variables globales
################################################
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)


################################################
## Aca definimos todas las funciones.
## Modularizamos porque somo prolijos :P
################################################
Startup_message() {
    clear
    echo "${MAGENTA}Bienvenido!${NORMAL}"
    echo "Este script fue escrito por  ${RED}Matias Barrios${NORMAL} en Mayo de 2018 - Grupo 3IH"
    echo "A continuacion procedemos a realizar los ejercicios uno por uno..."
    Contador
}

Contador() { 
    if [ $1 ]
    then
        clear
    fi
    for i in {1..0}
    do
        printf "$i..."
        sleep 1 
        printf $'\b'$'\b'$'\b'$'\b'$'\b'
        printf "     "
        printf $'\b'$'\b'$'\b'$'\b'$'\b'
    done
}

Ejercicio_1 () {
    clear
    echo "${CYAN} Corriendo Ejercicio 1... ${NORMAL}"
    printf "\n"
    mkdir -p ~/{algunas/{ejer,teo},cosas/{ejer,teo},otras/{diferente,distinto},no/{nadaQueVEr,noSePuede,siSePudo}}

    printf "\n"
    echo "${CYAN}**** Ejercicio 1 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_2 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 2... ${NORMAL}"
    printf "\n"
    printf "Hola\nHace frío y estoy lejos de casa"
    printf "\n"
    echo "${CYAN}**** Ejercicio 2 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_3 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 3... ${NORMAL}"
    printf "\n"
    
    echo "Hola usuario ${RED} $(whoami) ${NORMAL}"
    echo "Estas trabajando en la terminal ${RED}$( tty )${NORMAL} del equipo ${RED}$( hostname )${NORMAL}"
    printf "\n"
    echo "${CYAN}**** Ejercicio 3 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
###################################################
## FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN
###################################################

## Aca empieza la cosa
Startup_message
#Ejercicio_1
#Ejercicio_2
Ejercicio_3