FROM python:3.8-slim

# Set the working directory in the Docker container
WORKDIR /backend

# Copy the entire backend directory into the container
COPY backend /backend

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /backend/app/requirements.txt

# Specify the command to run on container start
CMD ["python", "/backend/app/main.py"]
