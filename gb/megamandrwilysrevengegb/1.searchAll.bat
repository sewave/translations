@echo off
set T_FILENAME="Megaman - Dr. Wily's Revenge (U) [!].gb"
set SCRIPTNAME="megamandrwilysrevengegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
