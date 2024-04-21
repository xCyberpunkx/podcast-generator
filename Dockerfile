FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
python3.10 \
python3-pip \
git
 RUN pip install PyYaml
 COPY  feed.py /usr/bin/feed.py
 COPY enterypoint.sh /enterypoint.sh
 ENTRYPOINT [ "enterypoint.sh" ]