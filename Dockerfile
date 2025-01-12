from node:16-alpine
RUN apk add --no-cache python3 py3-pip

copy . /app
workdir /app
run npm i
run npm run build

cmd /app/entrypoint.sh