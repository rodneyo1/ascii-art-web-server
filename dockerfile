# Stage 1: Build
FROM ubuntu AS builder

# Labels for the build stage
LABEL maintainer="rodneyotieno27@gmail.com" \
      version="1.0" \
      description="Build stage for Go application"

# Install required packages
RUN apt-get update && apt-get install -y \
    git \
    golang

# Set the working directory in the build stage
WORKDIR /app

# Copy the project code to the /app directory in the container
COPY . .

# Download Go module dependencies
RUN go mod download

# Build the Go binary
RUN go build -o mybinary main.go

# Stage 2: Final Image
FROM ubuntu:latest

# Labels for the final image
LABEL maintainer="rodneyotieno27@gmail.com" \
      version="1.0" \
      description="Final image with Go application"

# Copy the binary from the build stage to the final image
COPY --from=builder /app /app

# Set the working directory in the final image
WORKDIR /app

# Expose the port the application will run on
EXPOSE 8080

# Command to run the binary
CMD ["./mybinary"]
