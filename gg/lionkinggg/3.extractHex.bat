@echo off
set T_FILENAME="TR_Lion King, The (E) [!].gg"
set SCRIPTNAME="lionkinggg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
