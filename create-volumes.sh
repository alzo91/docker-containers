echo "Starting to create new network for front-end"
docker network create --driver bridge frontend

echo "Creating volume for Postgres"
docker volume create pg_data

echo "\n Creating SGBD Postgres"
cd postgres
PG_PWD=your_password docker-compose up -d
### docker exec -ti db_pg_v15 bash
### psql -U postgres

echo "\n Creating New SonarQube, we are using community"
cd ../sonarqube/
docker-compose up -d

echo "\n Creating the portainer"
cd ../portainer/
docker-compose up -d


echo "\n Creating SGBD MySQL"
cd ../mysql/
MYSQL_PWD=your_password docker-compose up -d
### docker exec -ti mysql_db bash
### mysql -u root -p

echo "\n Creating redis for data caching"
cd ../redis/
docker-compose up -d
### Entering and consulting redis container
### docker exec -it redis-server sh
### command: redis-cli

echo "\n Script has been success to run it."