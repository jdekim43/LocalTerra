# Simple usage with a mounted data directory:
# > docker build -t terra .
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.terrad:/root/.terrad -v ~/.terracli:/root/.terracli terra terrad init
# > docker run -it -p 26657:26657 -p 26656:26656 -v ~/.terrad:/root/.terrad -v ~/.terracli:/root/.terracli terra terrad start
FROM ubuntu:18.04

# Copy 
WORKDIR /root

ENV PATH /root/bin:$PATH

COPY terrad ./bin/
COPY terracli ./bin/

RUN terrad init localterra --chain-id localterra

# Install libgo_cosmwasm.so to a shared directory where it is readable by all users
# See https://github.com/CosmWasm/wasmd/issues/43#issuecomment-608366314
# Note that CosmWasm gets turned into !cosm!wasm in the pkg/mod cache
#RUN cp /go/pkg/mod/github.com/\!cosm\!wasm/go-cosmwasm@v*/api/libgo_cosmwasm.so /lib/x86_64-linux-gnu
