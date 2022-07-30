FROM golang:1.17.5-alpine3.15
# Connection GitHub Registry 
LABEL org.opencontainers.image.source https://github.com/dev-hyunsang/github-action-and-github-container-registry

WORKDIR /

ENV GO111MODULE=on 

WORKDIR /app

# COPY
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./
COPY . . 

RUN go build -o github-action-and-github-container-registry

EXPOSE 3000

ENTRYPOINT ["./github-action-and-github-container-registry"]