#!/bin/bash

b="\033[0m"         #Blanco
b1="$b\033[1;37m"   #Blanco2
r="${b}\033[1;31m"  #Rojo
r1="${b}\033[31m"   #Rojo2
A="${b}\033[1;34m"  #Azul
A1="${b}\033[34m"   #Azul2
ac="${b}\e[1;36m"   #Azul3
ac1="${b}\e[36m"    #Azul4
v="${b}\033[1;32m"  #Verde
v1="${b}\033[32m"   #Verde2
m="$b\033[1;35m"    #Morado
m1="$b\033[35m"     #Morado2
a="$b\033[1;33m"    #Amarillo
a1="$b\033[33m"     #Amarillo2
g="${b}\033[1;30m"  #Gris
cy="$b\033[38;2;23;147;209m" #Cyan
jk="$(ping -c 1 -q www.google.com >&/dev/null; echo $?)" #Coneccion de internet

#Salida forzada
trap Adios INT
Adios() {
  sleep 0.3
  printf "\n$v [$b1+$v]${b1} Finalizado\n"
  printf "$v [$b1+$v]${b1} JIN26$b\n\n"
  sleep 0.3
  exit
}

#Datos del autor
autor() {
  sleep 0.0
  echo -e "\n
  $A[$b1+$A]${b1} Creador:$cy    JIN26\n
  $A[$b1+$A]${b1} Herramienta:$a Banner\n
  $A[$b1+$A]${b1} GitHub:$a      https://github.com/JIN26\n\n"
}

#chequeo de packete figlet,python2,setterm,nvim
case $(command -v figlet && command -v python2 && command -v setterm && command -v nvim) in
  "")
    case $jk in
      0)
        ;;
      *)
        -e "\n$r[-]$b1 banner:$r No Hay Conexion A Internet.\n$b"
        exit
    esac
  clear
  apt install -y figlet
  #ls /usr/share/figlet
  #http://patorjk.com/software/taag/
  apt install -Y setterm
  figlet -cf big FAIL
  sleep 0.5
  echo "${v}Instalando Dependencias..!$b\n"
  sudo apt-get install neovim;
  pkg install -y python2
  source 'banner'
  exit
esac

#Listado y seleccion del banner
banner() {
  clear
  setterm -foreground green;
  figlet -cf slant Banner;
  autor
  sleep 0.5
  echo -e "${v}Elige un  banner:"
  echo -e "\n
  $A[${b1}01$A]${b1} Hacker
  $A[${b1}02$A]${b1} Hacker2
  $A[${b1}03$A]${b1} Ruby
  $A[${b1}04$A]${b1} Bash
  $A[${b1}05$A]${b1} Craneo
  $A[${b1}06$A]${b1} Craneo2
  $A[${b1}07$A]${b1} Ghost
  $A[${b1}08$A]${b1} Scorpion
  $A[${b1}09$A]${b1} Cobra
  $A[${b1}10$A]${b1} Arma
  $A[${b1}11$A]${b1} Kali
  $A[${b1}12$A]${b1} Diablo
  $A[${b1}13$A]${b1} Pulpo
  $A[${b1}14$A]${b1} Calavera
  $A[${b1}15$A]${b1} Banner Personal"
  echo -e "  $A[$b1+$A]$v banner:$b"
  read banner
  case $banner in
    01|1)
      banner=$(cat $PWD/.Banners/hacker)
      ;;
    02|2)
      banner=$(cat $PWD/.Banners/hacker2)
      ;;
    03|3)
      banner=$(cat $PWD/.Banners/ruby)
      ;;
    04|4)
      banner=$(cat $PWD/.Banners/bash)
      ;;
    05|5)
      banner=$(cat $PWD/.Banners/craneo)
      ;;
    06|6)
      banner=$(cat $PWD/.Banners/craneo2)
      ;;
    07|7)
      banner=$(cat $PWD/.Banners/ghost)
      ;;
    08|8)
      banner=$(cat $PWD/.Banners/scorpion)
      ;;
    09|9)
      banner=$(cat $PWD/.Banners/cobra)
      ;;
    10)
      banner=$(cat $PWD/.Banners/arma)
      ;;
    11)
      banner=$(cat $PWD/.Banners/kali)
      ;;
    12)
      banner=$(cat $PWD/.Banners/diablo)
      ;;
    13)
      banner=$(cat $PWD/.Banners/pulpo)
      ;;
    14)
      banner=$(cat $PWD/.Banners/calavera)
      ;;
    15)
      echo -e "${v}Pega el banner y cuando termines das 'ESC:x' "
      read -p "Presiona Enter Para Continuar: "
      nvim .Banners/nuevo
      banner=$(cat $PWD/.Banners/nuevo)
      ;;
    *)
      echo -e " $r[-]$b1 Banner invalido..!$b"
      sleep 0.5
      banner
  esac
}

#Listado y sellecion del color
color() {
  clear
  setterm -foreground green;
  figlet -cf slant Banner;
  autor
  sleep 0.5
  echo -e "${v}Elige un color para el banner:"
  echo -e "
  $A[${b1}01$A]${b} Blanco
  $A[${b1}02$A]${b1} Blanco2
  $A[${b1}03$A]${r} Rojo
  $A[${b1}04$A]${r1} Rojo2
  $A[${b1}05$A]${A} Azul
  $A[${b1}06$A]${A1} Azul2
  $A[${b1}07$A]${ac} Azul3
  $A[${b1}08$A]${ac1} Azul4
  $A[${b1}09$A]${v} Verde
  $A[${b1}10$A]${v1} Verde2
  $A[${b1}11$A]${m} Morado
  $A[${b1}12$A]${m1} Morado2
  $A[${b1}13$A]${a} Amarillo
  $A[${b1}14$A]${a1} Amarillo2
  $A[${b1}15$A]${g} Gris"
  echo -e "  $A[$b1+$A]$v banner:$b "
  read color
  case $color in
    01|1)
      Color=$b
      ;;
    02|2)
      Color=$b1
      ;;
    03|3)
      Color=$r
      ;;
    04|4)
      Color=$r1
      ;;
    05|5)
      Color=$A
      ;;
    06|6)
      Color=$A1
      ;;
    07|7)
      Color=$ac
      ;;
    08|8)
      Color=$ac1
      ;;
    09|9)
      Color=$v
      ;;
    10)
      Color=$v1
      ;;
    11)
      Color=$m
      ;;
    12)
      Color=$m1
      ;;
    13)
      Color=$a
      ;;
    14)
      Color=$a1
      ;;
    15)
      Color=$g
      ;;
    *)
      echo -e " $r[-]$b1 Color invalido..!$b"
      sleep 0.5
      color
  esac
}

#veces que se repita
titilo() {
  clear
  setterm -foreground green;
  figlet -cf slant Banner;
  autor
  echo -ne "${v}Defaul 40
  Cuantas veces quiere que titile: "
  read veces
}

banner
color
titilo

if [ -e $PREFIX/etc/motd ]; then
rm $PREFIX/etc/motd
fi
if [ -e $PREFIX/etc/bash.bashrc ]; then
rm $PREFIX/etc/bash.bashrc
echo '
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
  command_not_found_handle() {
    /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
  }
fi

PS1='Jin$ '
setterm -foreground red
figlet -cf big JIN26";
python2 Banner
setterm -foreground green
figlet -cf slant $OSTYPE";
figlet -cf big "${local:0:11}:8080" ||cowsay sorry

'>$PREFIX/etc/bash.bashrc

rm Banner &>> /dev/null
echo "
#!/bin/python2
#coding=utf-8
import os,sys,time
def maung(n):
for m in n + '\n':
  sys.stdout.write(m)
  sys.stdout.flush()
  time.sleep(0.001)
  banner = """
  $Color
  $banner
  $b"""\n
  os.system("clear")
  maung(banner)" > Banner
  case $veces in
    "")
      veces=40
      i=1
      while [ $i -le $veces ]; do
        nn=$(($i + 1))
        echo 'os.system("clear")' >> Banner
        echo "print (banner)" >> Banner
      done
      echo "print" >> Banner
      sleep 1
      ;;
    *)
      i=1
      while [ $i -le $veces ]; do
        i=$(($i + 1))
        echo 'os.system("clear")' >> Banner
        echo "print (banner)" >> Banner
      done
      echo "print" >> Banner
      sleep 1
  esac
  if [ -e .Banner ]; then
  rm .Banner
  fi
  autor
  echo -ne "${v}Ver Banner(y/n):$b "
  read yaa
  case $yaa in
    y|Y)
      python2 Banner
    ;;
    n|N)
      echo -e "$b"
      exit
    ;;
    *)
      echo -e "$b"
      exit
  esac
exit