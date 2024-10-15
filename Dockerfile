# Use the official Go base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the Go binary
RUN go build -o main .

# Expose the port your application listens on (if applicable)
EXPOSE 8080

# Define the command to run when the container starts
CMD ["./main"]