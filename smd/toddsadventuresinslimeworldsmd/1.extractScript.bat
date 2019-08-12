@echo off
set T_FILENAME="Todd's Adventures in Slime World (U) [!].bin"
set SCRIPTNAME="toddsadventuresinslimeworldsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
