FROM golang:1.23
WORKDIR /app
COPY . .
RUN go test -v ./...
WORKDIR /app/cmd
RUN go build -o black-jack .
ENTRYPOINT [ "/app/cmd/black-jack"]