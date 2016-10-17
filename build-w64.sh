#!/bin/sh

g++ -shared src/civetweb.cpp -I ./include/ -lws2_32 -mwindows -static-libstdc++ -static-libgcc -Wl,-Bstatic -lstdc++ -lpthread -o libcivetweb.dll
