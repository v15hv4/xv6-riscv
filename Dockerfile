FROM ubuntu:latest

RUN set -x && \
    apt-get update && \
    apt-get install --no-install-recommends --yes build-essential gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu

RUN useradd -m user
USER user
WORKDIR /home/user
CMD ["/bin/bash"]
