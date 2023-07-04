FROM debian:latest

RUN apt-get update -y
RUN apt-get install -y debian-ports-archive-keyring
RUN echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list

RUN apt-get update -y

RUN apt-get install -y cmake 
RUN apt-get install -y ninja-build
RUN apt-get install -y g++
RUN apt-get install -y git
RUN apt-get install -y libopencv-dev
RUN apt-get install -y clang-tidy
RUN apt-get install -y clazy
RUN apt-get install -y qt6-base-dev
RUN apt-get install -y curl
RUN apt-get install -y jq
RUN apt-get install -y gcovr
RUN apt-get install -y doxygen

CMD ["bash"]
