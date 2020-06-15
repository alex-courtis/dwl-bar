include config.mk

HDR = xdg-shell-protocol.h
CSRC = dwl-bar.c xdg-shell-protocol.c

OBJ = $(CSRC:.c=.o)

all: dwl-bar

$(OBJ): config.mk $(HDR)

xdg-shell-protocol.h:
	$(WAYLANDSCANNER) server-header\
		$(WAYLANDPROTOCOLS)/stable/xdg-shell/xdg-shell.xml $@

xdg-shell-protocol.c:
	$(WAYLANDSCANNER) private-code\
		$(WAYLANDPROTOCOLS)/stable/xdg-shell/xdg-shell.xml $@

dwl-bar: $(OBJ)

clean:
	rm -f dwl-bar xdg-shell-protocol.[ch] $(OBJ)

# https://github.com/alex-courtis/arch/blob/b530f331dacaaba27484593a87ca20a9f53ab73f/home/bin/ctags-something
ctags:
	ctags-c $(CPPFLAGS) $(HDR) $(CSRC)

.PHONY: all clean ctags

