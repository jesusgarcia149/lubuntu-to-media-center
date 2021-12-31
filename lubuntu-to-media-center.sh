#! /bin/bash




# Actualizar repositorios
sudo apt update

# Kodi v19.2 - Matrix
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt update
sudo apt install kodi -y




# Kodi config




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
# En caso que te hallas quedado sin servidor grafico
sudo apt install xorg -y



# Reiniciamos
# reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
