# Infrastructure

## Cloud Infrastructure

The project relies on four main services:

- AWS Elastic Beanstalk for managing the environment.
- AWS RDS Postgres for the database.
- AWS S3 Bucket for the frontend & images.
- CircleCI for the continuous integration.

### AWS Cloud Setup

- RDS - Database Host: database-2.c1pnjb9pfgg5.us-east-1.rds.amazonaws.com
- RDS - Database Port: 5432
- RDS - Database Name: postgres
- S3 Endpoint - Frontend: http://udagram-fend-proj.s3-website-us-east-1.amazonaws.com
- Elastic Beanstalk URL - Backend: http://udagramproject-env.eba-gttbt3pw.us-east-1.elasticbeanstalk.com/
