FROM docker.n8n.io/n8nio/n8n
USER root
RUN apk --update add curl
RUN curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin v0.59.1
USER node