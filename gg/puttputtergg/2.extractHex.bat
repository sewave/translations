@echo off
set T_FILENAME="TR_Putt & Putter (U) [!].gg"
set SCRIPTNAME="puttputtergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EE80:40,F5E0:400,1D800:800,B800:800
pause
