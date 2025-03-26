#!/bin/bash

# Asegurarse de que el script se ejecute como root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script debe ejecutarse como root."
    exit 1
fi

# Actualizar los paquetes sin preguntar
apt-get update -y

# Instalar python3, pip, git, vim, unzip, curl sin preguntar
apt-get install -y python3 python3-pip git vim unzip curl

# Crear el directorio .ssh si no existe
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Agregar la llave al archivo authorized_keys
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINs2uc6hx1erSs+93cnTmZSMzYSwRScMQrtX2BM3mPyU admin" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

echo "Script completado exitosamente."