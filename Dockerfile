FROM ubuntu:15.10
MAINTAINER Junichi Kajiwara<junichi.kajiwara@gmail.com>
RUN apt-get update

# 絶対ダイアログは出さない
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y mingw-w64 git mingw-w64-tools cmake cmake-curses-gui \
 vim apt-file wget

RUN mkdir /root/src
# 絶対ダイアログは出さないを戻しとく
ENV DEBIAN_FRONTEND dialog

# Set environment variables.
ENV HOME /root
# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
