FROM node:10.23.0

EXPOSE 3007

RUN npm i gulp@4 yo generator-teams@2.15.0 -g

VOLUME /usr/app/teamsap
WORKDIR /usr/app/teamsap
RUN useradd --create-home --shell /bin/bash teamsap && \
    usermod -aG sudo teamsap && \
    chown -R teamsap:teamsap /usr/app/teamsap

USER teamsap

CMD /bin/bash