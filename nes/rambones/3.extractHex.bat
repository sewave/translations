@echo off
set T_FILENAME="TR_Rambo (U) (PRG1) [!].nes"
set SCRIPTNAME="rambones"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B910:100,80C0:50,BA10:100
pause
