FROM ubuntu:latest
WORKDIR /lustre
COPY . /lustre
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y tar zip #wish
RUN tar xzf lustre-v4-III-e-linux64.tgz --directory /usr/local
RUN echo "export LUSTRE_INSTALL=/usr/local/lustre-v4-III-e-linux64" >> ~/.bashrc
RUN echo "source /usr/local/lustre-v4-III-e-linux64/setenv.sh" >> ~/.bashrc
ENV PATH="/usr/local/lustre-v4-III-e-linux64/bin:${PATH}"