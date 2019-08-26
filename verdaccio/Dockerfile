FROM verdaccio/verdaccio:4.2
USER root
ENV NODE_ENV=production
RUN npm i && npm install verdaccio-aws-s3-storage@8.0.0

USER verdaccio