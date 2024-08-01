FROM ubuntu:22.04

WORKDIR /app

COPY install_deps.sh /app
RUN sh install_deps.sh

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV TZ=Europe/Moscow

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

ENV CXX="/usr/bin/clang++-17"
ENV CC="/usr/bin/clang-17"

# SSH
EXPOSE 22
RUN echo "StrictHostKeyChecking=no" >> /etc/ssh/ssh_config
RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
