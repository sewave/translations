@echo off
set T_FILENAME="Trantor (Erbe).tzx"
set SCRIPTNAME="trantortzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
