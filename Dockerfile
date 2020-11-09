FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc \
    bison \
    ca-certificates \
    curl \
    clang \
    flex \
    gcc \
    git \
    make \
    libssl-dev \
    libc6-dev \
    libncurses-dev \
    xz-utils \
    zip \
 && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/arter97/arm32-gcc.git /toolchain --depth=1

ENV PATH /toolchain/bin:$PATH
ENV ARCH arm
ENV CROSS_COMPILE arm-eabi-
ENV KBUILD_BUILD_HOST github.com
