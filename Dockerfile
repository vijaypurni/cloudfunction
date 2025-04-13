# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python code into the container
COPY . .

# Expose port 8080 to Cloud Run (Cloud Run expects the app to listen on this port)
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
