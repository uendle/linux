#!/bin/bash
#solicita o root
sudo su
#criar diretorios na raiz(/)
cd /
mkdir publico adm ven sec

#criar grupo 
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criar usuarios e adicionando ao grupo
# -m cria o diretorio de usuario em /HOME
# -c adiciona um comentario ao usuario criado
# -p adiciona uma senha ao usuario riado 
# -s define um shell para o usuario
# -G adiciona o usuario ao grupo GRP_ADM

useradd carlos -m -c "carlos administração" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_ADM
passwd -i carlos

useradd maria -m -c "maria administração" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_ADM
passwd -i maria

useradd joao -m -c "joao administração" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_ADM
passwd -i joao

#GRP_VEN
useradd debora -m -c "debora vendas" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_VEN
passwd -i debora

useradd sebastiana -m -c "sebastiana vendas" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_VEN
passwd -i sebastiana

useradd roberto -m -c "roberto vendas" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_VEN
passwd -i roberto

#GRP_SEC
useradd josefina -m -c "josefina secretaria" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_SEC
passwd -i josefina

useradd amanda -m -c "amanda secretaria" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_SEC
passwd -i amanda

useradd rogerio -m -c "rogerio secretaria" -p $(openssl passwd -crypt "Senha") -s /bin/bash -G GRP_SEC
passwd -i rogerio

#adicionando grupo aos diretorios
chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /SEC

#liberando acesso ao diretorios
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


#liberando acesso aos diretorios publico
chmod 777 /publico


