#!/bin/sh

gcc -m64 -shared -Wall -Wextra -Wshadow -Wformat-security -Winit-self -Wmissing-prototypes \
  -O2 -DWIN32 -DNDEBUG \
  -Iinclude \
  src/civetweb.c \
  -lws2_32 -mwindows \
  -static-libstdc++ -static-libgcc \
  -Wl,-Bstatic -lstdc++ -lpthread \
  -o libcivetweb.dll

mv libcivetweb.dll ../../lib/win64
