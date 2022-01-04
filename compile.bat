@echo off
rmdir bin /s /q
pyinstaller --onefile -i="icon.ico" --noconsole main.py
rmdir build /s /q
REN dist bin
XCOPY /E /I resources bin\resources\
cd bin
REN main.exe Launcher.exe
PAUSE