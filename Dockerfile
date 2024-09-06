FROM centos:7
# Add repo file
ADD ./sander.repo /etc/yum.repos.d/

# Install cool software
RUN 	yum -y update && \
	yum -y install bash nmap iproute && \
	yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"]

