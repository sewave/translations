@echo off
set T_FILENAME="TR_Front Line (1984) (Taito) (J).rom"
set SCRIPTNAME="frontlinerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
