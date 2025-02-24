FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y
COPY . /app
WORKDIR /app
RUN chmod 777 /app
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -U -r requirements.txt
CMD python3 -m CozmoMusic
