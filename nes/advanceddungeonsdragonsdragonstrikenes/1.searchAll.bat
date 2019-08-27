@echo off
set T_FILENAME="Advanced Dungeons & Dragons - Dragon Strike (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsdragonstrikenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 8 FF "..\EngDict.txt"
pause
