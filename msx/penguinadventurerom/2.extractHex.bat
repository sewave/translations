@echo off
set T_FILENAME="TR_Penguin Adventure (Japan, Europe).rom"
set SCRIPTNAME="penguinadventurerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
