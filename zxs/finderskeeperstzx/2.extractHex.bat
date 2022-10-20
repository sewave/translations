@echo off
set T_FILENAME="TR_Finders Keepers.tzx"
set SCRIPTNAME="finderskeeperstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A82B:40
pause
