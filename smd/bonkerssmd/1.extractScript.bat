@echo off
set T_FILENAME="Bonkers (UE) [!].bin"
set SCRIPTNAME="bonkerssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
