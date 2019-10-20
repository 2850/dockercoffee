FROM centos:7
# FROM centos:8

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "1234" | passwd remote_user  --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

# Centos 8 寫法
# RUN useradd remote_user && \
#     echo "remote_user:1234" | chpasswd && \
#     mkdir /home/remote_user/.ssh && \
#     chmod 700 /home/remote_user/.ssh

COPY id_rsa.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen > /dev/null 2>&1

# RUN yum -y install mysql
RUN yum -y install https://download.postgresql.org/pub/repos/yum/9.4/redhat/rhel-7-x86_64/pgdg-centos94-9.4-3.noarch.rpm
RUN yum -y install postgresql94

RUN yum -y install epel-release && \
    yum -y install python-pip && \
    pip install --upgrade pip && \
    pip install awscli

CMD /usr/sbin/sshd -D
