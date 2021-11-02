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




# Iniciamos kodi con el sistema
# Manual
# menu > Preferencias > Aplicaciones predeterminadas para LXSession > Inicio automatico > Aplicaciones autoiniciadas manuales > kodi
# Automatica
cd
cd .config
cd lxsession
cd Lubuntu
echo 'kodi' > autostart




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7




# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y




# Reiniciamos
reboot
