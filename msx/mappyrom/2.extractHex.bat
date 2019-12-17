@echo off
set T_FILENAME="TR_Mappy (1984) (Namcot) (J).rom"
set SCRIPTNAME="mappyrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2760:100
pause
