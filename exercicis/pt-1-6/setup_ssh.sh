#!/bin/bash

echo "▶ Moviendo las claves a ~/.ssh/ ..."
mkdir -p ~/.ssh

mv *.pem ~/.ssh/ 2>/dev/null

echo "▶ Asignando los permisos ..."
chmod 400 ~/.ssh/*.pem

echo "▶ Añadiendo al config ..."
if ! grep -q "Host bastion" ~/.ssh/config 2>/dev/null; then
    cat ssh_config_per_connectar.txt >> ~/.ssh/config
    echo "▶ Config SSH añadido correctamente."
else
    echo "▶ Ya existe esta configuración, no se duplicara."
fi

echo "Listo! Puedes conectar con:"
echo "  ssh bastion"
echo "  ssh private-1"