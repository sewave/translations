@echo off
set T_FILENAME="TR_Blades of Steel (U) [!].nes"
set SCRIPTNAME="bladesofsteelnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 90DE:60,15C21:10
pause
