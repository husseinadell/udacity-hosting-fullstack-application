# Udagram

- [Udagram](#udagram)
  - [Description](#description)
  - [Getting Started](#getting-started)
    - [Development Setup](#development-setup)
  - [Built With](#built-with)
  - [Documentation](#documentation)
  - [CopyRights](#copyrights)

---

## Description

The Project is for the **Advanced Full-Stack Web Development Nanodegree Program - Deploying & Hosting a Full-Stack Application**.
The application codebase is provided from Udacity to be hosted into **AWS** with Pipeline using **CircleCI**.

## Getting Started

1. Clone this repo locally into the location of your choice.
2. Open a terminal and navigate to the root of the repo
3. follow the instructions in the Project Setup

The project can run but you need some environment variables and configured AWS cli user to access DB and S3.

### Development Setup

1. Clone the project - `git clone https://github.com/Storm-Maker/Hosting-Fullstack-AWS.git` and open two terminals fron the root directory of the project.
2. Run the following commands:

```bash
# terminal 1
cd udagram-frontend
npm install
npm start
```

```bash
# terminal 2
cd udagram-backend
npm install
npm start
```

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## Documentation

- Detailed Documentation (Infrastructure, App dependencies, Pipeline process) is provided in `./docs/README.md`
- Screenshots of the AWS configurations and the CircleCI are provided in `./docs/screenshots/`
- Architecture Diagrams of the AWS and the Pipeline are provided in `./docs/architecture-diagrams/`

## CopyRights

- Project codebase is provided by Udacity for the purpose of hosting a fullstack application into AWS.
- AWS Architecture Icons `https://aws.amazon.com/architecture/icons/`
- Diagrams.Net `https://www.diagrams.net/`
