# Edit the main entry point in package.json
jq '.main="src/server.js"' package.json | sponge package.json