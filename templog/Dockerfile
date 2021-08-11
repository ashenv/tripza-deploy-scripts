FROM logstash:7.13.4
RUN rm -f /user/share/logstash/pipeline/logstash.conf
COPY logstash.conf /user/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/