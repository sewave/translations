@echo off
set T_FILENAME="Sorcery.tzx"
set SCRIPTNAME="sorcerytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
