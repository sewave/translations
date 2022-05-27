@echo off
set T_FILENAME="Sceptre Of Bagdad.tzx"
set SCRIPTNAME="sceptreofbagdadtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
