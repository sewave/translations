@echo off
set T_FILENAME="TR_Cliffhanger (UE) [!].gb"
set SCRIPTNAME="cliffhangergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 67AC:30,68A4:20,65FC:8
pause
