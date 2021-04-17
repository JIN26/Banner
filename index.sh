#!/bin/bash

sudo apt install curl wget -y && curl https://raw.githubusercontent.com/JIN26/install/main/index.sh | bash

  PWDL=$PWD #Ruta actual

#lib
  source /usr/local/lib/.Jin/colors.lib
  source /usr/local/lib/.Jin/autor.lib
  source src/cmd/list.sh
#variable pass
  #chmod +xw src/certs/
  #pass=$( base64 -d src/certs/.data.key ) #decodifica el archivo
  #chmod -xw src/certs/

#Salida forzada
trap Adios INT

# main
banner
colors
titilo
clear

#logo
echo "#!/bin/bash
logo () {
  setterm -foreground red
  figlet -cf big JIN26
  sleep 0.1
  echo -e \"${color[$l]}\"
  printf '$banner'; sleep 0.5
  echo -e \"${color["FNegro"]}\"
  setterm -foreground green
  figlet -cf big $OSTYPE
  echo -e \"${color["Blanco"]}\"
}
veces=$veces
t=0
while [ \$t -le \$veces ]; do
    ((++t))
    clear
    logo
done">$PWDL/src/bin/Banner.bin
Autor
echo -ne "${color["Verde"]}Ver Banner(y/n):${color["Blanco"]} "
read yaa
if [ $n = "n" ];then
  . $PWDL/src/bin/Banner.bin
fi
exit

