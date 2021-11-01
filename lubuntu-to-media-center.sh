#! /bin/bash




# Actualizar repositorios
sudo apt update

# Kodi v19.2 - Matrix
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y

# Kodi config

# Addons

## Pluto TV
### Repositorio: Repositorios Oficiales
#### instalacion: addons de videos > Pluto TV

## Konectas > Balandro
### Repositorio: http://konectas.es/repo/
#### instalacion: %Nombre_de_la_fuente% > ADDONS CON REPOSITORIO > BALANDRO > repository.balandro-1.0.3.zip

## Youtube (Sin API)
## Addond Cristal Azul
## url: https://mundokodi.com/addon-cristal-azul-en-kodi/
### Repositorio: https://fuentekodileia.github.io/
#### instalacion: %Nombre_de_la_fuente% > addons-todo-en-uno > plugin.video.cristalazul-x.x.x.zip




# Retroarch
sudo add-apt-repository ppa:libretro/stable -y
sudo apt-get update
sudo apt install retroarch -y

# Intercambiar archivos de Android al PC
sudo apt install kdeconnect -y




# Iniciamos kodi con el sistema
# Manual
# menu > Preferencias > Aplicaciones predeterminadas para LXSession > Inicio automatico > Aplicaciones autoiniciadas manuales > kodi
# Automatica
cd
cd .config
cd lxsession
cd Lubuntu
echo 'kodi' > autostart




# Creamos los atajos con el teclado

# Cambiar al directorio home
cd

#mkdir comands
#cd comands

#touch kodi.sh
#echo '!#/bin/bash; pkill retroarch; pkill pcmanfm; kodi' > kodi.sh

#touch retroarch.sh
#echo '!#/bin/bash; pkill kodi; pkill pcmanfm; retroarch' > retroarch.sh

#touch pcmanfm.sh
#echo '!#/bin/bash; pcmanfm' > pcmanfm.sh

#touch kdeconnect.sh
#echo '!#/bin/bash; kcmshell5 kcm_kdeconnect' > kdeconnect.sh

#touch runner.sh
#echo '!#/bin/bash; pkill retroarch; pkill pcmanfm; pkill kodi; lxpanelctl run' > runner.sh

# Le damos permiso a los archivos
#sudo chmod 777 ./kodi.sh ./retroarch.sh ./pcmanfm.sh ./kdeconnect.sh ./runner.sh


# Surgerencias de atajos del teclado

# Kodi > ALT + K
# Retroarch > ALT + R
# Explorador de Archivos > ALT + A
# Kde-Connet > ALT + C
# Lanzador > ALT + B (Por defecto es ALT + F2)

# Añadir atajos al teclado
# manual
# menu > Preferencias > Setup Hot Keys > Programs




# Eliminar el Entorno de Escritorio lxde
# Sudo apt-get --purge autoremove lubuntu-desktop -y