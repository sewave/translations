@echo off
set T_FILENAME="TR_Dig Dug (1984) (Namcot) (J).rom"
set SCRIPTNAME="digdugrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
