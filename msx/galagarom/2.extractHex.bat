@echo off
set T_FILENAME="TR_Galaga (1984) (Namcot) (J).rom"
set SCRIPTNAME="galagarom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
