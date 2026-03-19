all:
	@make clean
	@make build
	@make run
build:
	-mkdir out
	gcc -E /usr/local/include/raylib.h | sed 's/#.*//' > out/praylib.h
	cp /usr/local/lib/libraylib.so out/libraylib.so
	cp bebra.lua out/main.lua
clean:
	rm -rf out
run:
	-@cd out && luajit main.lua
love:
	@echo make war, not love
