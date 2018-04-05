@echo off
set T_FILENAME="Trouble Shooter (U) [!].bin"
set SCRIPTNAME="troubleshooter"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
