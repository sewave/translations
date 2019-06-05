@echo off
set T_FILENAME="TR_Circus Charlie (1984) (Konami) (J).rom"
set SCRIPTNAME="circuscharlierom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 936:10
pause
