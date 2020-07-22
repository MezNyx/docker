# Use the google cloud-sdk image
FROM google/cloud-sdk:302.0.0

# Install helm
RUN curl https://helm.baltorepo.com/organization/signing.asc | apt-key add -
RUN apt-get install apt-transport-https wget --yes
RUN echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list
RUN apt-get update && apt-get install helm

# Install kubectx and kubens plugins
ENV KUBECTX_VERSION=v0.9.1
ENV KUBENS_VERSION=v0.9.1
RUN cd "$(mktemp -d)" && \
wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
wget https://github.com/ahmetb/kubectx/releases/download/${KUBENS_VERSION}/kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
mv kubectx kubens /usr/bin
