@echo off
set T_FILENAME="TR_Parodius (Japan) [T+ENG].rom"
set SCRIPTNAME="parodiusrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 120F0:8,12120:20,F665:10,F695:8,12F62:400
pause
