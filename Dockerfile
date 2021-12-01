FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:14

# Install Supabase CLI
ARG SUPABASE_CLI_VERSION=0.12.4
RUN cd /tmp && \
	wget https://github.com/supabase/cli/releases/download/v${SUPABASE_CLI_VERSION}/supabase_${SUPABASE_CLI_VERSION}_linux_amd64.deb &&\
	dpkg -i supabase_${SUPABASE_CLI_VERSION}_linux_amd64.deb

WORKDIR /reproduction

RUN git init

CMD ["/bin/zsh"]