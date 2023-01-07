FROM python:3.8-slim-buster

WORKDIR /app

# Copy requirements
COPY requirements.txt ./requirements.txt

# Install dependencies
RUN pip3 install -r requirements.txt

# Expose port
EXPOSE 8501

COPY . /app

# Create an entry point to make the image executable
ENTRYPOINT ["streamlit", "run"]
# Run the application:
CMD ["streamlit_app.py"]



