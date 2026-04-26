#!/bin/bash

# Script para Fedora - Instalar Discord, Steam, Roblox (via Vinegar) e Loja de Apps

echo "Atualizando sistema..."
sudo dnf update -y

echo "Instalando RPM Fusion..."
sudo dnf install -y \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Instalando Flatpak..."
sudo dnf install -y flatpak

echo "Adicionando Flathub..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Instalando Discord..."
flatpak install -y flathub com.discordapp.Discord

echo "Instalando Steam..."
sudo dnf install -y steam

echo "Instalando Roblox (Vinegar)..."
flatpak install -y flathub org.vinegarhq.Vinegar

echo "Instalando Loja de Aplicativos (GNOME Software)..."
sudo dnf install -y gnome-software

echo "Concluído!"
echo "Reinicie o PC para garantir tudo funcionando."
