@echo off
set T_FILENAME="TR_Lunar Pool (U) [!].nes"
set SCRIPTNAME="lunarpoolnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5190:60,57C0:20
pause
