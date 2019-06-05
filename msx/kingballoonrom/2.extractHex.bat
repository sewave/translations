@echo off
set T_FILENAME="TR_King & Balloon (1984) (Namcot) (J).rom"
set SCRIPTNAME="kingballoonrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
