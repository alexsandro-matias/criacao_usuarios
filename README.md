Neste projeto iremos criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

# Requisitos
 - diretórios
 - /publico
 - /adm
 - /vendas
 - /secretariado


## Grupos
 - grupo_adm - carlos,maria,joao
 - grupo_vendas - debora, sebastiana,roberto 
 - grupo_secretariado - josefina,amanda,rogerio


## Funcionalidades
 - excluir diretorios, arquivos, grupos e usuarios criados anteriormente;
 - Todo provisionamento deve ser feito em um arquivo do tipo bash;
 - O dono de todos os diretórios criados será o usuário root;
 - Os usuarios de cada grupo terão permissão total dentro de seu respectivo diretório;
 - Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;
 - Subir arquivo de script criado para a conta no Github.


