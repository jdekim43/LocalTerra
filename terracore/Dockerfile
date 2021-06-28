# Simple usage with a mounted data directory:
# > docker build -t terra .
# > docker run -it -p 1317:1317 -p 26657:26657 -p 26656:26656 terra terrad start
ARG CORE_VERSION

FROM terra-core:$CORE_VERSION

RUN terrad unsafe-reset-all
