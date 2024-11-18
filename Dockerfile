FROM python:3.8-slim-buster
LABEL Maintainer="musk82155@gmail.com"
WORKDIR /app
COPY app.py ./
RUN pip install -r requirements.txt
EXPOSE 4000
CMD ["python3", '-m', 'flask', 'run', '--host=0:0:0:0', '--port=4000']
