@echo off
set T_FILENAME="Goofy's Hysterical History Tour (U) [!].bin"
set SCRIPTNAME="goofyhisterical"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
