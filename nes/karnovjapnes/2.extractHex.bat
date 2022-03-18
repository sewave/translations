@echo off
set T_FILENAME="TR_Karnov (Japan) (Rev 1) [T+ENG].nes"
set SCRIPTNAME="karnovjapnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2DF50-2E00F,28F10-28F1F,29B50:70,2EB50:70,25730:E0,25F70:A0,2DED0:80,23FE0:10,2D810:200
pause
