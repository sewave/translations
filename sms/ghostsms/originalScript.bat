@echo off 
set T_FILENAME="Ghostbusters (UE) [!].sms"
set SCRIPTNAME="ghostsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%Items.tbl %T_FILENAME% %SCRIPTNAME%Items.ext 6428-6738-00
pause 
