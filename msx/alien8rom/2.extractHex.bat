@echo off
set T_FILENAME="TR_Alien 8 (Japan).rom"
set SCRIPTNAME="alien8rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 306D:8
pause
