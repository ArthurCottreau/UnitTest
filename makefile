CC := g++

# Application directories
SOURCEDIR := source/
INCLUDEDIR := include/

CFLAGS := -I $(INCLUDEDIR)
LDFLAGS := -lCatch2Main -lCatch2

SOURCES := $(wildcard $(SOURCEDIR)/*.cpp) # Retrieves all .c files
TARGET := main # Executable name

# Rules get executed even if files of those names exist
.PHONY: all build

# First rule is the default so 'make all' and 'make build' are identical
all: build

build:
	mkdir -p $@
	$(CC) $(SOURCES) -o $@/$(TARGET) $(CFLAGS) $(LDFLAGS)
