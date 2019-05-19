@echo off
set T_FILENAME="TR_Kid Icarus (UE) [!].nes"
set SCRIPTNAME="kidicarusnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E10:30,1310:100,1D10:100
pause
