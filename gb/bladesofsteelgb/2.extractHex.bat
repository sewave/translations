@echo off
set T_FILENAME="TR_Blades of Steel (E) [!].gb"
set SCRIPTNAME="bladesofsteelgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
