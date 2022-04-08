@echo off
set T_FILENAME="Cauldron.tzx"
set SCRIPTNAME="cauldrontzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
