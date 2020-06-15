PREFIX = /usr/local

WAYLANDPROTOCOLS = /usr/share/wayland-protocols
WAYLANDSCANNER = /usr/bin/wayland-scanner

INCS =

CPPFLAGS = $(INCS)

COMPFLAGS = -pedantic -Wall -Wextra -Werror -O3
CFLAGS = $(COMPFLAGS) -std=c99

LDFLAGS = -lwayland-server

CC = cc

