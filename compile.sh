rm -d -rf bin
python3 -m PyInstaller --onefile -i="icon.ico" --add-data="resources:resources" --noconsole main.py
rm -d -rf build
mv dist bin
cd bin
mv main launcher
