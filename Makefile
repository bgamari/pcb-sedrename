PCB_DIR = /opt/exp/pcb

sedrename.so : sedrename.c
	gcc -Wall -I$(PCB_DIR)/src -I$(PCB_DIR) `pkg-config --cflags glib-2.0` -O2 -shared $< -o $@ -fPIC

install : sedrename.so
	mkdir -p $(HOME)/.pcb/plugins
	cp sedrename.so $(HOME)/.pcb/plugins/sedrename.so
