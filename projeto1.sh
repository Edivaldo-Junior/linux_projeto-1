#!/bin/bash

echo "CRIANDO NOVA ESTRUTURA"

echo "CRIANDO DIRETORIOS"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "CRIANDO GRUPOS"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USUARIOS"

echo "GRP_ADM"
useradd carlos -c "GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd maria -c "GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -c "GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

echo "GRP_VEN"
useradd debora -c "GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd bastiana -c "GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -c "GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

echo "GRP_SEC"
useradd joselina -c "GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -c "GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -c "GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

echo "ESPECIFICANDO PERMISSOES DOS DIRETORIOS"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo "FIM... DO PROCESSO DE CRIACAO DE USUARUIOS"






