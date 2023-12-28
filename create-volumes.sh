echo "Creating volume for Postgres"

docker volume create pg_data

echo "Creating SGBD Postgres"
cd postgres
PG_PWD=your_password docker-compose up -d
### docker exec -ti db_pg_v15 bash
### psql -U postgres

echo "Creating New SonarQube, we are using community"
cd ../sonarqube/
docker-compose up -d

echo "Creating the portainer"
cd ../portainer/
docker-compose up -d


echo "Creating SGBD MySQL"
cd ../mysql/
MYSQL_PWD=your_password docker-compose up -d
### docker exec -ti mysql_db bash
### mysql -u root -p