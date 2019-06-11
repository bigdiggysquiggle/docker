FROM archlinux/base

COPY DOOM.WAD /usr/share/doom.wad

RUN pacman -Syu --noconfirm git sudo binutils file patch gcc pkg-config awk make fakeroot
RUN useradd --no-create-home --shell=/bin/false build && usermod -L build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir builds && git clone https://aur.archlinux.org/chocolate-doom.git builds/chocolate-doom
RUN chmod 777 builds builds/chocolate-doom
WORKDIR /builds/chocolate-doom
RUN sudo -u build makepkg -si --noconfirm --skippgpcheck

ENTRYPOINT chocolate-doom -iwad /usr/share/doom.wad -window
