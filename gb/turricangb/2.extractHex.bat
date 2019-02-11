@echo off
set T_FILENAME="TR_Turrican (UE) [!].gb"
set SCRIPTNAME="turricangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D490:10,1D4C0:10,1FD17:30
pause
