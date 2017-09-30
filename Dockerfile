FROM base/archlinux:latest
ADD pacman.conf /etc/pacman.conf
RUN pacman -Sy && pacman -Syu --noconfirm && pacman -S sed --noconfirm  && pacman -S yaourt --noconfirm \
    && echo "Server = http://mirrors.163.com/archlinux/$repo/os/x86_64" > /etc/pacman.d/mirrorlist \
    && echo "nameserver 114.114.114.114" > /etc/resolv.conf \
    && yaourt -Syy && yaourt -Syu --noconfirm
