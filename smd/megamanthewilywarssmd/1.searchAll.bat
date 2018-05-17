@echo off
set T_FILENAME="Megaman - The Wily Wars (E).bin"
set SCRIPTNAME="megamanthewilywarssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
