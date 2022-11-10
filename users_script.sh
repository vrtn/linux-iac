#!/bin/bash

echo "Criando dos diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando dos grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios...ADM"
useradd carlos -m -G GRP_ADM -s /bin/bash
useradd maria -m -G GRP_ADM -s /bin/bash
useradd joao -m -G GRP_ADM -s /bin/bash

echo "Criando usuarios...VEN"
useradd debora -m -G GRP_VEN -s /bin/bash
useradd sebastiana -m -G GRP_VEN -s /bin/bash
useradd roberto -m -G GRP_VEN -s /bin/bash

echo "Criando usuarios...SEC"
useradd josefina -m -G GRP_SEC -s /bin/bash
useradd amanda -m -G GRP_SEC -s /bin/bash
useradd rogerio -m -G GRP_SEC -s /bin/bash

echo "Permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
