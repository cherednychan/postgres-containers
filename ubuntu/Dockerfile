FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    supervisor \
    openssh-server

RUN mkdir -p /var/log/supervisor /var/run/sshd

RUN echo 'root:rootpassword' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN useradd -m test.a && echo "test.a:1234" | chpasswd
RUN useradd -m test.b && echo "test.b:1234" | chpasswd

COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 22

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
