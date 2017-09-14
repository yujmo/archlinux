FROM base/archlinux:latest
RUN echo "[archlinuxcn]" >> /etc/pacman.conf \ 
    && echo "SigLevel = Optional TrustAll" >> /etc/pacman.conf \
    && echo "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf \
    && pacman -Sy  && pacman -S sed --noconfirm  && pacman -S yaourt --noconfirm \
    && yaourt -Syy && yaourt -S emacs --noconfirm 
    
