@echo off
set T_FILENAME="TR_Volleyball (UE) [!].nes"
set SCRIPTNAME="volleyballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98C0:20,9520:90
pause
