FROM base/archlinux:latest
COPY pacman.conf /etc/pacman.conf
RUN pacman -Sy  && pacman -S sed --noconfirm  && pacman -S yaourt --noconfirm \
    && yaourt -Syy && yaourt -S emacs --noconfirm 
    
