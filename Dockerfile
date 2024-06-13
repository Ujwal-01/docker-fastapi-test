FROM python:3.9

# The working directory
WORKDIR /app

COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

EXPOSE 8000

# Running the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

