FROM python:3.8-slim

# Set the working directory in the Docker container
WORKDIR /backend

# Install necessary system packages, including a C++ compiler with C++11 support
RUN apt-get update && apt-get install -y build-essential

# Copy the requirements file into the container
COPY backend/app/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the contents of the local src directory to the working directory
COPY backend/app/main.py .
COPY backend/app/llm_engine.py .
# Copy other necessary files and directories here
# Example:
# COPY backend/app/some_module.py .

# Copy the vector_store directory into the container
COPY backend/app/vector_store /backend/vector_store

# Specify the command to run on container start
CMD ["python", "main.py"]
