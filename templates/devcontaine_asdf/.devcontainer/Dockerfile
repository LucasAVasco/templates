FROM ubuntu:noble-20241011 as dist

# Global packages {{{

RUN apt update

# ASDF dependencies
RUN apt install -y curl git

# }}}

# Folder with the mounted volumes. Stick bit, all accesses to user and group
RUN useradd --create-home --uid=9999 docker_volumes
RUN chmod 1770 /home/docker_volumes

# Replace the default 'ubuntu' user by the 'dev' user
RUN userdel ubuntu
RUN useradd --create-home --uid=1000 --groups=docker_volumes dev
WORKDIR /home/dev
USER dev
ENV USER='dev'
ENV HOME="/home/$USER"
# NOTE(LucasAVasco): The 'dev' UID and GID will be 1000. If you need another value, you can use the './scripts/update_user_uid_gid.sh'
# script to change them after the creation of the container.

# ASDF installation
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --depth=1 --branch v0.14.1

# Install ASDF in Bash
SHELL ["/bin/bash", "-c"]
ENV PATH="$HOME/.asdf/shims:/$HOME/.asdf/bin:$PATH"
RUN echo 'source $HOME/.asdf/asdf.sh' >> ~/.bashrc
RUN echo 'source $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

# Shell
WORKDIR /home/docker_volumes
CMD bash
