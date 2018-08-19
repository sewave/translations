@echo off 
set T_FILENAME="Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set SCRIPTNAME="fantasyzone2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
