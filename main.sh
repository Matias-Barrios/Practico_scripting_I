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
    echo "El codigo del mismo se puede encontrar en GitHub : ${GREEN}https://github.com/Matias-Barrios/Practico_scripting_I${NORMAL}"
    echo "Este script fue testeado en ${GREEN}Xubuntu 16.04${NORMAL}"
    echo "La version de BASH usada es : ${GREEN}4.3.48${NORMAL}"
    echo "${YELLOW}A continuacion procedemos a realizar los ejercicios uno por uno...${NORMAL}"
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

    echo "${RED}Este ejercicio no genera output!${NORMAL}"
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
    
    echo "Hola usuario ${GREEN} $(whoami) ${NORMAL}"
    echo "Estas trabajando en la terminal ${GREEN}$( tty )${NORMAL} del equipo ${GREEN}$( hostname )${NORMAL}"
    echo "Hoy es ${GREEN} $( date +%A' '%d' de '%b' de '%Y ) ${NORMAL}"
    echo "Que tengas un buen dia!"
    printf "\n"
    echo "${CYAN}**** Ejercicio 3 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_4 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 4... ${NORMAL}"
    printf "\n"
    
    echo "${RED}Este ejercicio podria no generar output!${NORMAL}"
    find ~ -type f -name '*.mp3' 
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 4 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_5 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 5... ${NORMAL}"
    printf "\n"
    
    fortune | cowsay
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 5 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_6 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 6... ${NORMAL}"
    printf "\n"
    
    echo "${RED}Este ejercicio no genera output!${NORMAL}"
    cd ~/cosas/ejer
    touch pru1 prueba2 pru prueb raro
    cd ~/otras/distinto
    touch archi1 a2 b52 U2 cuarteto
    cd
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 6 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_7 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 7... ${NORMAL}"
    printf "\n"
    
    alias yo="whoami"
    alias dir="ls -la"
    alias LS="sl"
    alias cd..='echo "HAY QUE DEJAR ESPACIOS"'
    alias apagar="poweroff"

    echo "No se puede definir un alias dentro de una funcion."
    echo "Es una limitacion de Bash, sorry!"
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 7 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_8 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 8... ${NORMAL}"
    printf "\n"
    
    echo "Todos los comandos de este ejercicio van a fallar por lo mencionado en el ejercicio 7"
       
    eval yo
    eval dir
    eval LS
    eval cd..
    apagar

    printf "\n"
    echo "${CYAN}**** Ejercicio 8 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}

Ejercicio_9 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 9... ${NORMAL}"
    printf "\n"
    
    echo "${RED}Este ejercicio no genera output!${NORMAL}"
    mkdir ${HOME}/si/aca
    find ${HOME} -type f -regextype egrep -regex '.*/[aeiouAEIOU][^/]*[0-9]([.][^.]+)?$' | xargs cp -t ${HOME}/si/aca

    printf "\n"
    echo "${CYAN}**** Ejercicio 9 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_10 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 10... ${NORMAL}"
    printf "\n"
    
    echo "El exit status del ultimo comando ejecutado es : ${RED} $? ${NORMAL}"
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 10 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_11 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 11... ${NORMAL}"
    printf "\n"
    
    sed -n '8,22 p' /etc/passwd | cat -n
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 11 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_12 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 12... ${NORMAL}"
    printf "\n"
    
    cal oct 28
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 12 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_13 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 13... ${NORMAL}"
    printf "\n"
    
    uname -a
    cat /etc/*release*
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 13 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_14 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 14... ${NORMAL}"
    printf "\n"
    
    date  +%A' '%d' de '%b' de '%Y -d "+90 days"
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 14 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_15 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 15... ${NORMAL}"
    printf "\n"
    
    wc -l ${HOME}/.bash_history
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 15 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_16 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 16... ${NORMAL}"
    printf "\n"
    
    echo "${RED}Este ejercicio no genera output!${NORMAL}"
    PATH="${PATH}:/home/usr/bin"
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 16 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_17 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 17... ${NORMAL}"
    printf "\n"
    
    cowsay -f tux "Hola `whoami`"

    
    printf "\n"
    echo "${CYAN}**** Ejercicio 17 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_18 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 18... ${NORMAL}"
    printf "\n"
    
    cowsay -f dragon "DENUNCIADO!!!"

    
    printf "\n"
    echo "${CYAN}**** Ejercicio 18 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
Ejercicio_19 () {
    clear
    echo "${CYAN}Corriendo Ejercicio 19... ${NORMAL}"
    printf "\n"
    
    
    echo "QUE LA FUERZA TE ACOMPAÑE"
    telnet towel.blinkenlights.nl
    
    printf "\n"
    echo "${CYAN}**** Ejercicio 19 completado **** ${NORMAL}"
    echo "${YELLOW}Presione una tecla par continuar! ${NORMAL}"
    read -n 1
}
###################################################
## FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN FIN
###################################################

## Aca empieza la cosa
Startup_message
Ejercicio_1
Ejercicio_2
Ejercicio_3
Ejercicio_4
Ejercicio_5
Ejercicio_6
Ejercicio_7
Ejercicio_8
Ejercicio_9
Ejercicio_10
Ejercicio_11
Ejercicio_12
Ejercicio_13
Ejercicio_14
Ejercicio_15
Ejercicio_16
Ejercicio_17
Ejercicio_18
Ejercicio_19
