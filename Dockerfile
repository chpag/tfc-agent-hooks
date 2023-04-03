FROM hashicorp/tfc-agent:latest
USER root
ADD ca.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

USER tfc-agent
RUN mkdir /home/tfc-agent/.tfc-agent
ADD --chown=tfc-agent:tfc-agent hooks /home/tfc-agent/.tfc-agent/hooks
