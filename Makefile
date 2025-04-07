C = gcc
TARGET = animal.exe
CFLAGS = -Wall -g
OBJECTS = dog.o blackcow.o turtle.o main.o

$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)

