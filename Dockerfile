# Use a lightweight Linux base image
FROM ubuntu:22.04

# Install bash (and any other tools you need)
RUN apt-get update && apt-get install -y bash \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your shell script into the container
COPY hello.sh .

# Make sure the script is executable
RUN chmod +x hello.sh

# Run the script by default when the container starts
CMD ["./hello.sh"]
