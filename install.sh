REPO=$(grep REPO .env | cut -d '=' -f2)
NAME=$(grep NAME .env | cut -d '=' -f2)
SQL_FILE=$(grep SQL_FILE .env | cut -d '=' -f2)
DB_USER=$(grep DB_USER .env | cut -d '=' -f2)
DB_PASSWORD=$(grep DB_PASSWORD .env | cut -d '=' -f2)
DB_DATABASE=$(grep DB_DATABASE .env | cut -d '=' -f2)
git clone $REPO
docker-compose up -d
docker exec -i ${NAME}_db mysql -u ${DB_USER} -p${DB_PASSWORD} ${DB_DATABASE} < ${SQL_FILE}