FROM python:3.10
 
WORKDIR /usr/src/app/misisBot
 
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
 
COPY . .
 
CMD ["python", "main.py"]
