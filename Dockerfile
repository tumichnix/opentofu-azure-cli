ARG AZ_CLI_VERSION=2.74.0
ARG OT_VERSION=1.10.1

FROM ghcr.io/opentofu/opentofu:${OT_VERSION}-minimal AS tofu

FROM mcr.microsoft.com/azure-cli:${AZ_CLI_VERSION}

COPY --from=tofu /usr/local/bin/tofu /usr/local/bin/tofu

CMD ["sh"]
