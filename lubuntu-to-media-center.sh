#! /bin/bash




# Actualizar repositorios
sudo apt update

# Kodi v19.2 - Matrix
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y




# Kodi config


# Añadir Retroarch al Menu Principal de Kodi
# Archivo a Modificar ~/.kodi/addons/skin.estuary/xml/Home.xml

# Reemplazar
#<item>
#    <label>$LOCALIZE[342]</label>
#    <onclick condition="Library.HasContent(movies) + Skin.HasSetting(home_no_categories_widget)">ActivateWindow(Videos,videodb://movies/,return)</onclick>
#    <onclick condition="Library.HasContent(movies) + !Skin.HasSetting(home_no_categories_widget)">ActivateWindow(Videos,videodb://movies/titles/,return)</onclick>
#    <onclick condition="!Library.HasContent(movies)">ActivateWindow(Videos,sources://video/,return)</onclick>
#    <property name="menu_id">$NUMBER[5000]</property>
#    <thumb>icons/sidemenu/movies.png</thumb>
#    <property name="id">movies</property>
#    <visible>!Skin.HasSetting(HomeMenuNoMovieButton)</visible>
#</item>

# Por
#<item>
#    <label>Retroarch</label>
#    <onclick>System.Exec(retroarch)</onclick>
#</item>
#<item>
#    <label>$LOCALIZE[342]</label>
#    <onclick condition="Library.HasContent(movies) + Skin.HasSetting(home_no_categories_widget)">ActivateWindow(Videos,videodb://movies/,return)</onclick>
#    <onclick condition="Library.HasContent(movies) + !Skin.HasSetting(home_no_categories_widget)">ActivateWindow(Videos,videodb://movies/titles/,return)</onclick>
#    <onclick condition="!Library.HasContent(movies)">ActivateWindow(Videos,sources://video/,return)</onclick>
#    <property name="menu_id">$NUMBER[5000]</property>
#    <thumb>icons/sidemenu/movies.png</thumb>
#    <property name="id">movies</property>
#    <visible>!Skin.HasSetting(HomeMenuNoMovieButton)</visible>
#</item>




# Comandos

# Creamos los Comandos para cambiar de Programas
cd
mkdir Comands
cd Comands
# Creamos Comando para cerrar Kodi y abrir Retroarch
touch switch-to-retroarch.sh
echo '#! /bin/bash; pkill kodi; retroarch' > switch-to-retroarch.sh
# Creamos Comando para cerrar Retroarch y abrir Kodi
touch switch-to-kodi.sh
echo '#! /bin/bash; pkill retroarch; kodi' > switch-to-kodi.sh
# Les damos permisos de ejecucion
sudo chmod 777 ./switch-to-retroarch.sh ./switch-to-kodi.sh


# Comando en Windows para cerrar Kodi y abrir Retroarch
# Kodi
# Ubicacion:
# C:\Program Files\Kodi\addons\skin.estuary\xml\Home.xml
# Linea:
# <onclick>System.Exec(C:\Comands\switch-to-retroarch.bat)</onclick>
# Contenido del switch-to-retroarch.bat
# @echo off
# taskkill /F /IM kodi.exe
# retroarch
# exit




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




# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y




# Reiniciamos
# reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
