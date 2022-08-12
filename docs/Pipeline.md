# Pipeline

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

### Development purposes

The pipeline is executed in the following order:

- Create a postgress database instance (you can use enither docker, or local postgresql).
- Confugure the environment variables in the .env file (set your postgres credentials).
- Setup frontend dependencies `npm run frontend:install`.
- Setup backend dependencies `npm run backend:install`.
- Start the backend server `cd udagram-api && npm run dev`.
- On another terminal, Start the frontend server `cd udagram-frontend && npm start`.
- Open the frontend in a browser.
- And now you can start developing.

### Production deployment:

Using CircleCI, we can build the project and deploy it to AWS.
Once your changes are pushed to the main branch, circleci will execute the following steps (you just watch the build process):

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
