FROM ubuntu:latest
RUN apt update && apt install -y bc
COPY calculator.sh /calculator.sh
RUN chmod +x /calculator.sh
CMD ["/calculator.sh"]
