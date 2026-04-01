# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Environment variable to ensure output is sent directly to terminal
ENV PYTHONUNBUFFERED=1

# Command to run the application (or tests)
CMD ["python", "app.py"]
