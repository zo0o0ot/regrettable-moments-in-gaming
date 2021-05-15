FROM docker/whalesay:latest
LABEL Name=regrettablemomentsingaming Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes && apt-get install -yq hugo

CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
