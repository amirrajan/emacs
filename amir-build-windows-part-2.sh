cd /c/other-projects/emacs
# in cmd as admin msys2_shell.cmd -mingw64
pacman --needed --noconfirm -S autoconf autogen automake automake-wrapper diffutils git guile libgc libguile libltdl libunistring  make mingw-w64-x86_64-binutils --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-bzip2 mingw-w64-x86_64-cairo mingw-w64-x86_64-crt-git mingw-w64-x86_64-dbus mingw-w64-x86_64-expat --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-glib2 mingw-w64-x86_64-gmp mingw-w64-x86_64-gnutls mingw-w64-x86_64-harfbuzz mingw-w64-x86_64-headers-git mingw-w64-x86_64-imagemagick mingw-w64-x86_64-isl  mingw-w64-x86_64-libffi mingw-w64-x86_64-libgccjit --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-libiconv  mingw-w64-x86_64-libjpeg-turbo mingw-w64-x86_64-libpng mingw-w64-x86_64-librsvg mingw-w64-x86_64-libtiff mingw-w64-x86_64-libwinpthread-git mingw-w64-x86_64-libxml2 --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-mpc mingw-w64-x86_64-mpfr mingw-w64-x86_64-pango mingw-w64-x86_64-pixman mingw-w64-x86_64-winpthreads mingw-w64-x86_64-xpm-nox mingw-w64-x86_64-lcms2 mingw-w64-x86_64-xz mingw-w64-x86_64-zlib tar wget --noconfirm
pacman --needed --noconfirm -S texinfo --noconfirm
pacman --needed --noconfirm -S pkg-config --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-jansson --noconfirm
pacman --needed --noconfirm -S mingw-w64-x86_64-tree-sitter --noconfirm
pacman --needed --noconfirm -S autoconf
pacman --needed --noconfirm -S mingw-w64-x86_64-libtree-sitter mingw-w64-x86_64-tree-sitter
export CFLAGS="-O3 -Wno-implicit-function-declaration -fallow-store-data-races -fassociative-math -floop-parallelize-all -fno-finite-math-only -fno-math-errno -fno-rounding-math -fno-semantic-interposition -fno-signaling-nans -fno-signed-zeros -fno-trapping-math -fomit-frame-pointer -freciprocal-math -frename-registers -ftree-parallelize-loops=4 -funroll-loops -funsafe-math-optimizations -march=native -mtune=native -DW32CONVT256COLOR"
sh ./autogen.sh

./configure --prefix=/c/emacs --without-pop --without-imagemagick --without-compress-install -without-dbus --with-gnutls --with-json --with-tree-sitter \
            --without-gconf --with-rsvg --without-gsettings --with-mailutils \
            --with-native-compilation --with-modules  --with-xml2 --with-wide-int --with-w32-vt-color=24bit
