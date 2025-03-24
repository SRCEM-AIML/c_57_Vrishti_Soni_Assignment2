# Use Python 3.10 or higher
FROM python:3.10-slim

# Set the working directory
WORKDIR /code

# Copy the requirements file to the working directory
COPY requirements.txt /code/

# Install dependencies (this will be cached unless requirements.txt changes)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . /code/

# Expose the port that Django runs on
EXPOSE 8000

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
