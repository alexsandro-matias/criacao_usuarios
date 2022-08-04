echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /secretaria

echo "Criando Grupos"
groupadd grupo_adm
groupadd grupo_vendas
groupadd grupo_secretaria


echo "Criando usuários"
useradd carlos -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_adm
useradd maria -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_adm
useradd joao -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_adm

useradd debora -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_vendas
useradd sebastiana -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_vendas
useradd roberto -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_vendas

useradd josefina -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_secretaria
useradd amanda -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_secretaria
useradd rogerio -m -s /bin/bash -p $(openssl -crypt senha123) -G grupo_secretaria


echo "Especificando permissões dos diretórios"
chown root:grupo_adm/adm
chown root:grupo_vendas/vendas
chown root:grupo_secretaria /secretaria

# Especificando as permissões, ou seja, bloqueando para outros usuários
# (1 - root - permissão total
#  2 - grupo especificado - permissão total
#  3 - outros grupos - nenhuma permissão
# )

chmod 770 /adm
chmod 770 /vendas
chmod 770 /secretaria
chmod 777 /publico

echo "Fim do script!"