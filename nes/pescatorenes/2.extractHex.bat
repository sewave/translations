@echo off
set T_FILENAME="TR_Pescatore (Japan) (Proto).nes"
set SCRIPTNAME="pescatorenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98C0:30,7B10:B0,D110:100,63D0:40,B200:10
pause
