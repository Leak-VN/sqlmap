# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Expose the default port for the REST API
EXPOSE 8775

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Run sqlmapapi.py when the container launches
CMD ["python", "sqlmapapi.py", "-s"]
