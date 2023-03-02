#!/bin/bash

echo "Criando diretório..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd pedro1 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd pedro2 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd pedro3 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd jose1 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd jose2 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd jose3 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd marcos1 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd marcos2 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd marcos3 -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Fim..."

