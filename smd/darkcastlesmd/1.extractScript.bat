@echo off
set T_FILENAME="Dark Castle (UE) [!].bin"
set SCRIPTNAME="darkcastlesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
