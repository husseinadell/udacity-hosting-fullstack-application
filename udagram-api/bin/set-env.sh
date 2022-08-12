# set env vars to elastic beanstalk
eb init udagramproject --region us-east-1 --platform node.js
eb use Udagramproject-env
eb setenv AWS_BUCKET=${AWS_BUCKET} JWT_SECRET=${JWT_SECRET} PORT=${PORT} POSTGRES_DB=${POSTGRES_DB} POSTGRES_HOST=${POSTGRES_HOST} POSTGRES_PASSWORD=${POSTGRES_PASSWORD} POSTGRES_PORT=${POSTGRES_PORT} POSTGRES_USERNAME=${POSTGRES_USERNAME}