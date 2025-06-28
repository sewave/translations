@echo off
set T_FILENAME="Magic Meanies.tzx"
set SCRIPTNAME="magicmeaniestzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
