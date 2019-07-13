@echo off
set T_FILENAME="Raiden Trad (JU) [!].bin"
set SCRIPTNAME="raidentradsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
