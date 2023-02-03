ARG ubuntu_version=22.04
FROM ubuntu:${ubuntu_version}

ARG USERNAME=rustdev
ARG USER=${USERNAME}
ENV HOME /home/${USER}
ARG TOKEN=rustotken
ENV TOKEN=${TOKEN}
ENV USERNAME=${USERNAME}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y supervisor curl g++ && \
    /bin/bash -c "curl https://sh.rustup.rs -sSf | sh -s -- -y"

RUN useradd --create-home --shell /bin/bash ${USER}

COPY --chown=${USERNAME}:${USERNAME} ./lessons/ $HOME/tutorial/

WORKDIR $HOME/tutorial

WORKDIR /opt/archives
RUN curl -L https://github.com/gitpod-io/openvscode-server/releases/download/openvscode-server-v1.69.1/openvscode-server-v1.69.1-linux-x64.tar.gz > \
    /opt/archives/openvscode-server-v1.69.1-linux-x64.tar.gz
RUN tar xzf openvscode-server-v1.69.1-linux-x64.tar.gz && chown -R ${USER}:${USER} openvscode-server-v1.69.1-linux-x64
ENV PATH=/opt/archives/openvscode-server-v1.69.1-linux-x64/bin:$PATH

RUN openvscode-server --install-extension vadimcn.vscode-lldb && \
    openvscode-server --install-extension tamasfe.even-better-toml && \
    openvscode-server --install-extension serayuzgur.crates && \
    openvscode-server --install-extension swellaby.vscode-rust-test-adapter && \
    openvscode-server --install-extension ms-vscode.test-adapter-converter && \
    openvscode-server --install-extension rust-lang.rust-analyzer

COPY ./supervisord.conf /etc/supervisord.conf
COPY ./entrypoint.sh /entrypoint.sh

# Generate command from environment variables - default port is 3000
RUN sed -i "s/XXX/${USER}/g" /etc/supervisord.conf && \
    chown -R ${USER}:${USER} /home/rustdev/

RUN touch /var/log/openvscode-server.log && chown -R ${USER}:${USER} /var/log/openvscode-server.log
EXPOSE 3000
EXPOSE 8080
CMD ["/entrypoint.sh"]
