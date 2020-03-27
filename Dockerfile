# Container image that runs your code
FROM clearlinux/mixer-ci:latest
ENV LC_ALL="en_US.UTF-8"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY --chown=clr:clr entrypoint.sh /home/clr/
WORKDIR /home/clr/

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/home/clr/entrypoint.sh"]
