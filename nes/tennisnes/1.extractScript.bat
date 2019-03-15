@echo off
set T_FILENAME="Tennis (JU) [!].nes"
set SCRIPTNAME="tennisnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
