FROM python:3.10-slim
WORKDIR /app
COPY app.py gunicorn_config.py requirements.txt /app/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn","-b","0.0.0.0:5000","app:app"]