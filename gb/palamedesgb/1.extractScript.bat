@echo off
set T_FILENAME="Palamedes (UE) [!].gb"
set SCRIPTNAME="palamedesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
