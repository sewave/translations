@echo off
set T_FILENAME="Boxxle (U) (V1.1) [!].gb"
set SCRIPTNAME="boxxlegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
