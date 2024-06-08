@echo off
set T_FILENAME="Yie Ar Kung-Fu (PD) [!] EXP.gen"
set SCRIPTNAME="yiearkungfusmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
