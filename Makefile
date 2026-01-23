game.gb: main.o
	rgblink -o game.gb $^
	rgbfix -v -p 0xFF game.gb
	rgbfix -v -p 0xFF game.gb
	rgblink -n game.sym main.o
main.o: main.rgbasm
	rgbasm -o main.o $^
clean:
	rm *.o *.sym *.gb 2> /dev/null
