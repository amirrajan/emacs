# choco install msys2
# in cmd as admin msys2_shell.cmd -mingw64

pacman -Sy --noconfirm --needed filesystem msys2-runtime bash libreadline libiconv libarchive libgpgme libcurl pacman ncurses libintl
pacman -Su

echo "exit and run part 2"
