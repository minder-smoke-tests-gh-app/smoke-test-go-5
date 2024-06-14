FROM index.docker.io/library/golang:1.20-alpine@sha256:e47f121850f4e276b2b210c56df3fda9191278dd84a3a442bfe0b09934462a8f

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /webapp

EXPOSE 8080

ENTRYPOINT ["/webapp"]
