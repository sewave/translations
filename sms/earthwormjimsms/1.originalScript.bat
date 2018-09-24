@echo off
set T_FILENAME="Earthworm Jim (B) [!].sms"
set SCRIPTNAME="earthwormjimsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
