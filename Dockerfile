# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set the working directory in the container
# This creates a directory named /app and sets it as the working directory
WORKDIR /app

# Install Python 3 and pip
# Update the package list and install Python 3, pip, and any other dependencies
RUN apt-get update && apt-get install -y python3 python3-pip

# Copy the current directory contents into the container at /app
# This copies all the files in your local directory (including the Python script) to the /app directory in the container
COPY . /app

# Make the Python script executable
# This ensures that the script has the correct permissions to be executed
RUN chmod +x example_log_generator_script.py

# Run the Python script when the container launches
# CMD specifies the command to run when the container starts; in this case, it runs the script using Python 3
CMD ["python3", "./example_log_generator_script.py"]

# Open a terminal in the working directory (this is the working directory where the script and the Dockerfile are located)
# docker build -t ubuntu-log-generator .
# docker run ubuntu-log-generator
