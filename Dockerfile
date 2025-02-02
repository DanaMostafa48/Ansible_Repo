FROM ubuntu
RUN apt update && apt install ssh sudo -y
RUN adduser iti
RUN echo "iti:123" | chpasswd
RUN gpasswd -a iti sudo
RUN service ssh start
ENTRYPOINT ["bash"]