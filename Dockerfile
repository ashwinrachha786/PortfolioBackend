# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in docker
WORKDIR /backend

# Copy the requirements file into the container
COPY backend/app/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY backend/app /backend

# Specify the command to run on container start
CMD ["python", "main.py"]