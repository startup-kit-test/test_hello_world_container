FROM golang:1.10

# TODO: Use a container to build this and just use binary

COPY ./main.go /go/src/github.com/startup-kit-test/test_hello_world_container/
WORKDIR /go/src/github.com/startup-kit-test/test_hello_world_container
RUN go get ./ && go build -o main . && rm -Rf main.go && mv main /

EXPOSE 80

CMD [ "/main" ]
