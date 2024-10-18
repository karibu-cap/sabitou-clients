# sabitou_back_end

## Getting Started

insure that golang and docker are install on your computer.

- setup the the docker image:

```sh
docker-compose -f docker-compose.dev.yml up surrealdb
```

- run the back-end

```sh
ENV=dev SEED=true go run cmd/server/main.go

            or

ENV=dev go run cmd/server/main.go
```

- to seed the database, go to https://surrealist.app/explorer add new local connection with data:
  - connection : remote => ws host: localhost:8000
  - Authentication: method: Root, user: root, pass: root.
