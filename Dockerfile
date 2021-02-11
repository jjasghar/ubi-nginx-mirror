FROM registry.access.redhat.com/ubi8/ubi-minimal

RUN microdnf -y install nginx wget

ADD run.sh /run.sh
ADD index.html /index.html

CMD ["/run.sh"]
