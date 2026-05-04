#!/bin/bash

# Pergunta ao Hyprland se o monitor nativo (eDP-1) está na lista de ativos
if hyprctl monitors | grep -q "eDP-1"; then
    # Se encontrou, desliga a tela do T490
    hyprctl keyword monitor "eDP-1, disable"
else
    # Se não encontrou, religa com a resolução e posição ancoradas
    hyprctl keyword monitor "eDP-1, 1920x1080@60, 0x0, 1"
fi
