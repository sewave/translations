@echo off
set T_FILENAME="Tutankham (USA).col"
set SCRIPTNAME="tutankhamcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
