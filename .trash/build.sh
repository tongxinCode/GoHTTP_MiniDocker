rm -f main
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --tags netgo src/main.go