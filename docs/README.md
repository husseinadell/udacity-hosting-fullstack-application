# Udagram

- [App Dependencies](#app-dependencies)
- [Infrastructur](#infrastructur)
- [AWS Cloud Setup](#aws-cloud-setup)
- [Environment Variables](#environment-variables)
- [Pipeline](#pipeline)
- [Pipeline Process](#pipeline-process)
- [Testing](#testing)
  - [Unit Tests:](#unit-tests)
  - [End to End Tests:](#end-to-end-tests)
- [Built With](#built-with)

---

### App Dependencies

```
- Node v14.15.1 (LTS) or more recent.

- npm 6.14.8 (LTS) or more recent.

- AWS RDS database instance running Postgres.

- AWS S3 bucket for Frontend.

- AWS CLI v2

- AWS EB CLI
```

### Infrastructure
Our project relies on three main services: 
```
- AWS Elastic Beanstalk
- AWS RDS Postgres
- AWS S3 Bucket
- AWS CLI
```

### AWS Cloud Setup

- RDS - Database Host: database-2.c1pnjb9pfgg5.us-east-1.rds.amazonaws.com
- RDS - Database Port: 5432
- RDS - Database Name: postgres

- S3 Endpoint - Frontend: http://udagram-fend-proj.s3-website-us-east-1.amazonaws.com

- Elastic Beanstalk URL - Backend: http://udagramproject-env.eba-gttbt3pw.us-east-1.elasticbeanstalk.com/

## Environment Variables

Setup the following variables in the .env file or in the cloud environments:

```bash
PORT=8080
POSTGRES_HOST={database_ip_address}
POSTGRES_PORT={database_port}
POSTGRES_DB={database_name}
POSTGRES_USERNAME={database_username}
POSTGRES_PASSWORD={database_password}
URL={url}
JWT_SECRET={any_passphrase}
AWS_REGION={us}east-1>
AWS_PROFILE={profile}
AWS_BUCKET={bucket_name}
```

## Pipeline
The main `package.json` file is used for controing the pipeline process.
From the root of the project:

- `npm run frontend:install` - install frontend dependencies.
- `npm run frontend:build` - build the Angular frontend.
- `npm run frontend:deploy` - deploy the project to S3 using `./udagram-frontend/bin/deploy.sh` deploy script.
- `npm run backend:install` - install backend dependencies.
- `npm run backend:modify-entrypoint` - change the main entry point in the `package.json` from `src/server.js` to `server.js` using `./udagram-api/bin/edit-main-entry.sh` using of jq and sponge.
- `npm run backend:build` - To transpile the Typescript/Backend.
- `npm run backend:deploy` - To deploy the project to EB using `./udagram-api/bin/deploy.sh` deploy script.

## Pipeline Process
Using CircleCI, we can build the project and deploy it to AWS.
The order of the run jobs:

- Set Env Variables.
- Install NodeJS.
- Checkout Code & Cloning the Repo.
- Install AWS CLI v2.
- Install AWS EB CLI.
- Frontend:
  - Install dependencies.
  - Build the angular.
  - Deploy to AWS S3.
- Backend:
  - Install dependencies.
  - Change The main entry point in package.json.
  - Transpile the typescript/ build the app.
  - Install AWS Elastic Beanstalk CLI.
  - Set Env variables on eb. 
  - Deploy app to AWS Elastic Beanstalk.

## Testing

This project contains two different test suite in frontend: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd udagram-frontend`
2. `npm run test`
3. `npm run e2e`

There are no Unit test on the back-end
