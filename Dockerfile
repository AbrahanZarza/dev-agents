FROM alpine:3.24.2 AS base

WORKDIR /workspace

ENV USE_BUILTIN_RIPGREP=0
ENV PATH="/root/.opencode/bin:/root/.local/bin:${PATH}"

RUN apk add --no-cache \
    bash \
    curl \
    ca-certificates \
    git \
    ripgrep \
    libgcc \
    libstdc++

RUN curl -fsSL https://opencode.ai/install | bash \
    && opencode --version

RUN curl -fsSL https://claude.ai/install.sh | bash \
    && claude --version

CMD ["bash"]
