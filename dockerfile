# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file if you have one (create it using pip freeze > requirements.txt)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your bot's code into the container
COPY . .

# Expose any ports if necessary (not required for Telegram bots)
# EXPOSE 80
EXPOSE 80

# Command to run your bot
CMD ["py", "main.py"]