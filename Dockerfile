FROM golang:1.11-alpine

LABEL maintainer="paul.pizzinini@students.fh-hagenberg.at"
# Set maintainer label: maintainer=[YOUR-EMAIL]

WORKDIR /src
# Set working directory: `/src`

COPY main.go /src/main.go
# Copy local file `main.go` to the working directory

RUN ls
# List items in the working directory (ls)

RUN go build -o "/usr/myapp"
# Build the GO app as myapp binary and move it to /usr/

EXPOSE 8888
#Expose port 8888

ENTRYPOINT /usr/myapp
# Run the service myapp when a container of this image is launched
