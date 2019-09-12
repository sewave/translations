@echo off
set T_FILENAME="TR_Star Soldier (U) [!].nes"
set SCRIPTNAME="starsoldiernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
