@echo off 
set T_FILENAME="Robocop versus The Terminator (UE) [!].sms"
set SCRIPTNAME="rbcvstrmsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
