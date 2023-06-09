@echo off
set T_FILENAME="BLAM.tzx"
set SCRIPTNAME="blamtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
