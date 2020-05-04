AUTOHOTKEY="C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"
INPUT_FILENAME=MacKeyboard.ahk
OUTPUT_FILENAME=MacKeyboard.exe
PROJECT_ROOT_DIR=D:\Steffen\workspace\autohotkey-windows-mac-keyboard
TARGET=D:\Users\sid\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

all: clean compile

compile:
	mkdir target
	$(AUTOHOTKEY) /in ./${INPUT_FILENAME} /out ./target/${OUTPUT_FILENAME}

copy: clean compile
	copy  /Y "${PROJECT_ROOT_DIR}\target\${OUTPUT_FILENAME}" "${TARGET}\${OUTPUT_FILENAME}"

clean:
	rmdir /S /Q target
	