FROM mcr.microsoft.com/azure-functions/python:4-python3.10-appservice
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt || true
CMD ["python", "-m", "worker.main"]
