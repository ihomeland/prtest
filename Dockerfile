FROM jboss/wildfly:19.0.0.Final
RUN /opt/jboss/wildfly/bin/add-user.sh -u admin -p admin -s
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
