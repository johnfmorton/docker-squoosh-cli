ARG TAG=16-alpine
FROM node:$TAG

WORKDIR /app

# Install dependencies
RUN set -eux; \
    npm i -g @squoosh/cli

# Default command
CMD ["/bin/sh"]
