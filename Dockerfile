FROM registry.access.redhat.com/ubi8/openjdk-8:1.11-1.1648459552

USER root
RUN cp /etc/passwd /home/jboss/passwd \
&& chmod ug+rwX /home/jboss /home/jboss/passwd

COPY target/rest-0.0.1.jar /home/jboss/rest-0.0.1.jar

USER jboss

# CMD tail -f /dev/null
CMD java -jar /home/jboss/rest-0.0.1.jar
