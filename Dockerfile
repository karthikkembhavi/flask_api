FROM python:3.6.1-alpine
WORKDIR /flask_api
ADD .  /flask_api
RUN rm -rf ven
RUN python3 -m pip install --upgrade pip
RUN python -m venv venv
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
