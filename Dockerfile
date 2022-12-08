FROM node:12 AS theme

WORKDIR /usr/src/app

COPY ghost/themes/casper-maat/ .
RUN yarn install
RUN yarn pretest

FROM ghost:5.25

# Install Google Cloud Storage storage adapter dependencies
RUN npm install ghost-v3-google-cloud-storage && \
    rm package-lock.json

# The files in the content.orig directory is copied to content directory
# at entrypoint.
COPY ghost /var/lib/ghost/content.orig

COPY --from=theme /usr/src/app/assets/built /var/lib/ghost/content.orig/themes/casper-maat/assets/built
