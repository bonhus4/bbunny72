# Menggunakan Debian SID sebagai base image
FROM debian:sid

# Memperbarui dan menginstal paket yang diperlukan
RUN apt update -y \
    && apt upgrade -y \
    && apt install -qy \
       automake \
       autoconf \
       pkg-config \
       libcurl4-openssl-dev \
       libssl-dev \
       libjansson-dev \
       libgmp-dev \
       make \
       gcc \
       g++ \
       git \
       zlib1g-dev \
       ocl-icd-opencl-dev

# Membuat direktori dengan izin penuh
RUN mkdir -m 777 /bunny

# Menyalin skrip entrypoint ke dalam container
ADD entrypoint.sh /entrypoint.sh

# Memberikan izin eksekusi pada skrip entrypoint
RUN chmod +x /entrypoint.sh

# Menetapkan skrip entrypoint sebagai perintah default
CMD ["/entrypoint.sh"]
