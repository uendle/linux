

#!/bin/bash

#diretorios apagados
rm -rf /adm 
rm -rf /ven
rm -rf /sec
rm -rf /publico

rm -rf /home/carlos
rm -rf /home/maria
rm -rf /home/joao
rm -rf /home/debora
rm -rf /home/sebastiao
rm -rf /home/roberto
rm -rf /home/josefina
rm -rf /home/amanda
rm -rf /home/rogerio

echo "diretorios apagados"

#grupos deletados
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
echo "grupos apagados"

#usuarios deletados
userdel carlos
userdel maria
userdel joao
userdel debora
userdel sebastiao
userdel roberto
userdel josefina
userdel amanda
userdel rogerio
echo "usuarios deletados"

#criar diretorios
mkdir /adm /ven /sec /publico
echo "diretorios criados"

#criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "grupos criados"

#criar usuarios
useradd carlos -m -c "carlos administração" -s /bin/bash 
useradd maria -m -c "maria administração" -s /bin/bash
useradd joao -m -c "joao administrção" -s /bin/bash

useradd debora -m -c "debora vendas" -s /bin/bash
useradd sebastiao -m -c "sebastiao vendas" -s /bin/bash
useradd roberto -m -c "roberto vendas" -s /bin/bash

useradd josefina -m -c "josefina secretaria" -s /bin/bash
useradd amanda -m -c "amanda secretaria" -s /bin/bash
useradd rogerio -m -c "rogerio secretaria" -s /bin/bash

echo "usuarios criados"

#criando e solicitando primeira senha

passwd -e carlos
passwd -e maria
passwd -e joao

passwd -e debora
passwd -e sebastiao
passwd -e roberto

passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "atributo de senha ok"

#adicionando usuarisos aos grupos
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiao
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "usuarios adicionados aos grupos"

#atribuindo grupo a diretorios

chown -R :GRP_ADM /adm
chown -R :GRP_VEN /ven
chown -R :GRP_SEC /sec


echo "grupo atribuido aos diretorios"

#gerenciando permissoes 

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico