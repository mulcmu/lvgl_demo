#
# Makefile
#
BIN = demo-8.3.11-arm
DESTDIR = /usr
PREFIX = /local
LVGL_DIR = lvgl


#CC=gcc
CC=arm-linux-gnueabihf-gcc
CFLAGS = -Wall -Wshadow -Wundef -Wmaybe-uninitialized
CFLAGS += -O3 -g3 -I./ 
# directory for local libs
LDFLAGS = -L$(DESTDIR)$(PREFIX)/lib 
LIBS += -lstdc++ -lm

VPATH =

$(info LDFLAGS ="$(LDFLAGS)")


CSRCS += $(shell find $(LVGL_DIR)/src -type f -name '*.c')
CSRCS += $(shell find $(LVGL_DIR)/demos -type f -name '*.c')
CSRCS += $(shell find $(LVGL_DIR)/examples -type f -name '*.c')
CSRCS += $(shell find lv_drivers -type f -name '*.c')
CSRCS += $(wildcard *.c)

# folder for object files
OBJDIR = obj

COBJS = $(patsubst %.c,$(OBJDIR)/%.o,$(CSRCS))

SRCS = $(CSRCS)
OBJS = $(COBJS)



all: default

$(OBJDIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@$(CC)  $(CFLAGS) -c $< -o $@
	@echo "CC $<"

default: $(OBJS)
	$(CC) -o $(BIN) $(OBJS) $(LDFLAGS) $(LIBS)

#	nothing to do but will print info
nothing:
	$(info OBJS ="$(OBJS)")
	$(info SRCS ="$(SRCS)")
	$(info DONE)


clean:
	rm -f $(OBJS)

