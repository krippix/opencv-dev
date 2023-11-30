FROM debian:bookworm-backports

RUN apt-get update -y
RUN apt-get install -y debian-ports-archive-keyring
RUN echo "deb http://deb.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list

RUN apt-get update -y

RUN apt-get install -qq -y cmake 
RUN apt-get install -qq -y ninja-build
RUN apt-get install -qq -y g++
RUN apt-get install -qq -y git
RUN apt-get install -qq -y libopencv-dev
RUN apt-get install -qq -y clang-tidy
RUN apt-get install -qq -y clazy
RUN apt-get install -qq -y qt6-base-dev
RUN apt-get install -qq -y curl
RUN apt-get install -qq -y jq
RUN apt-get install -qq -y doxygen
RUN apt-get install -qq -y graphviz
RUN apt-get install -qq -y pip
RUN pip install gcovr

RUN echo "alias gcovr='python3 -m gcovr'" >> ~/.bashrc

CMD ["bash"]
