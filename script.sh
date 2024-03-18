#!/bin/bash
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_ADM 
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_ADM 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_ADM
tuseradd debora -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_VEN 
ustradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_VEN 
useratd roberto -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_tEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_SEC 
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_SEC 
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt password123) -g GRP_SEC 

chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
