# Use an official Android runtime as a parent image
FROM openjdk:8-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    # Add your dependencies here if needed \
    && rm -rf /var/lib/apt/lists/*

# Run gradle build when the container launches
CMD ["gradle", "build"]
