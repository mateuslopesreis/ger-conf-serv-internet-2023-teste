
########## Comandos Básicos  #######################

#Criar e executar um container Hello Word
docker run hello-world   #Cria um container de forma persistente
docker run --rm hello-world #Cria um container temporário


docker container list  #Listar os conteiners em execução

docker ps -a    # Comando que lista todos os container, mesmo parados

docker image list  #Listar img offline(cache)

#Comandos de gerenciamento de estado do container
docker start NOME_CONTAINER ou ID_CONTAINER  #iniciar
docker stop  NOME_CONTAINER ou ID_CONTAINER   #Parar
docker restart NOME_CONTAINER ou ID_CONTAINER  #Reiniciar
docker rm NOME_CONTAINER ou ID_CONTAINER  #Remover


#Comando em lote para gerenciar container a partir dos IDs
docker stop $(docker ps -a -q) # Parar todos
docker start  $(docker ps -a -q) # Iniciar todos
docker restart  $(docker ps -a -q) # reiniciar todos
docker rm  $(docker ps -a -q) # Remover todos


#Zerar Docker
docker system prune --all -f


########## CONTAINER COM EXECUÇÃO CONSTANTE ###############
docker run --name nginx1 -p 80:80 -d nginx:1.25-alpine
docker run --name nginx2 -p 81:80 -d --rm nginx:1.25-alpine
docker run --name nginx3 -p 82:80 -d --rm nginx:1.25-alpine