# Dockerfile
# This builds a container image with Python and Flask,
# installs dependencies, and runs the app.

FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Expose the Flask default port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]