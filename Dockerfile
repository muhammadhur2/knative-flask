FROM python:${NODE_VERSION}-alpine
# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install required dependencies
RUN pip install --no-cache-dir flask

# Expose the Flask port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
