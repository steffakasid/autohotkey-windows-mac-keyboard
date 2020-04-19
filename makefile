AUTOHOTKEY="C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"
TARGET="D:\Users\sid\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

all: clean compile

compile:
	mkdir target
	$(AUTOHOTKEY) /in ./MacKeyboard.ahk /out ./target/MacKeyboard.exe

copy:
	cp target/MacKeyboard.exe ${TARGET}

clean:
	rmdir /S /Q target
	
