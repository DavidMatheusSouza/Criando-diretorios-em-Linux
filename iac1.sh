#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd david -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd marcos -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_ADM
useradd fernanda -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd marcio -m -s /bin/bash -p $(openssl passwd  senha123) -G GRP_SEC
useradd jose -m -s /bin/bash -p $(openssl passwd  senha123)  -G GRP_SEC


echo "Editando permissões de diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluido"






