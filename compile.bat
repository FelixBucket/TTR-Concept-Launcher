@echo off
rmdir bin /s /q
pyinstaller --onefile --noconsole -i="C:\Program Files (x86)\Toontown Rewritten\phase_3\etc\icon.ico" main.py
rmdir build /s /q
REN dist bin
XCOPY /E /I resources bin\resources\
cd bin
REN main.exe Launcher.exe
PAUSE