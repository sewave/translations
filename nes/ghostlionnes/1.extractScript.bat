@echo off
set T_FILENAME="Ghost Lion (USA).nes"
set SCRIPTNAME="ghostlionnes"
python extract_all.py
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off
pause
