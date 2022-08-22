#!/bin/bash
# nao usar acentos

echo "Iniciando configuracao"

#criacao de diretorios

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#criacao de grupos

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criacao de usuarioS

#criacao de usuarioS

useradd carlos -s /bin/bash -m -g GRP_ADM -p $(openssl passwd -5 123)
useradd maria -s /bin/bash -m -g GRP_ADM -p $(openssl passwd -5 123)
useradd joao -s /bin/bash -m -g GRP_ADM -p $(openssl passwd -5 123)

useradd debora -s /bin/bash -m -g GRP_VEN -p $(openssl passwd -5 123)
useradd sebastiana -s /bin/bash -m -g GRP_VEN -p $(openssl passwd -5 123)
useradd roberto -s /bin/bash -m -g GRP_VEN -p $(openssl passwd -5 123)

useradd josefina -s /bin/bash -m -g GRP_SEC -p $(openssl passwd -5 123)
useradd amanda -s /bin/bash -m -g GRP_SEC -p $(openssl passwd -5 123)
useradd rogerio -s /bin/bash -m -g GRP_SEC -p $(openssl passwd -5 123)

#definindo dono dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#definindo permissoes

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Configuracao concluida"
