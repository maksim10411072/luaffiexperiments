lua: clean buildnative buildlua run
fnl: clean buildnative buildfnl run
buildnative:
	-mkdir out
	gcc -E /usr/local/include/raylib.h | sed 's/#.*//' > out/praylib.h
	cp /usr/local/lib/libraylib.so out/libraylib.so
buildlua:
	-mkdir out
	cp bebra.lua out/main.lua
buildfnl:
	-mkdir out
	fennel -c bebra.fnl > out/main.lua
clean:
	rm -rf out
run:
	-@cd out && luajit main.lua
love:
	@echo make war, not love
