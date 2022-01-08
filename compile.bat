@echo off
rmdir bin /s /q
pyinstaller --onefile -i="icon.ico" --add-data="resources;resources" --noconsole main.py
rmdir build /s /q
REN dist bin
cd bin
REN main.exe Launcher.exe
PAUSE