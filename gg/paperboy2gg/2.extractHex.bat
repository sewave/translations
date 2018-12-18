@echo off
set T_FILENAME="TR_Paperboy 2 (U) [!].gg"
set SCRIPTNAME="paperboy2gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2A1E:A0
pause
