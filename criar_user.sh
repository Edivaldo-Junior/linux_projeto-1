#!/bin/bash

echo "Ciando Usuarios do Sistema"

useradd guest10 -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd 123456)
passwd  guest10 -e

useradd guest11 -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd 123456)
passwd  guest11 -e

useradd guest12 -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd 123456)
passwd  guest12 -e

useradd guest13 -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd 123456)
passwd  guest13 -e

echo "Criacao Finalizada"

