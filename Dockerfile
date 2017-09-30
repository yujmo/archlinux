FROM base/archlinux:latest
ADD pacman.conf /etc/pacman.conf
RUN pacman -Sy && pacman -Syu --noconfirm && pacman -S sed --noconfirm  && pacman -S yaourt --noconfirm
