FROM centos:7.8.2003

COPY docker-entrypoint.sh /

RUN rpm --import https://repo.saltproject.io/py3/redhat/7/x86_64/3004/SALTSTACK-GPG-KEY.pub && curl -fsSL https://repo.saltproject.io/py3/redhat/7/x86_64/3004.repo | tee /etc/yum.repos.d/salt.repo && yum clean expire-cache && yum install -y salt-master


RUN chmod +x /docker-entrypoint.sh

EXPOSE 4505 4506

CMD /docker-entrypoint.sh
