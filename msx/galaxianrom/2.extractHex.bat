@echo off
set T_FILENAME="TR_Galaxian (1984) (Namcot) (J) [a1].rom"
set SCRIPTNAME="galaxianrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CAA:08,c3A:08
pause
