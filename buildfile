# Build & install st

cc       clang
flags    -Wall -Wextra -I/usr/include/freetype2 -D_XOPEN_SOURCE=600              \
		 -DVERSION=\"bellrise-fork\" $(pkg-config --cflags fontconfig)           \
		 $(pkg-config --libs fontconfig) $(pkg-config --cflags freetype2)        \
		 $(pkg-config --libs freetype2) -Wno-unused-parameter -Wno-sign-compare  \
		 -Wno-unused-command-line-argument
libs     m rt X11 util Xft Xrender
src      *.c
out      st

@install cp -f st /usr/local/bin        \
		&& chmod 755 /usr/local/bin/st  \
		&& tic -sx st.info

@uninstall rm -f /usr/local/bin/st
