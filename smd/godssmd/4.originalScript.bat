@echo off
set T_FILENAME="Gods (U) [!].bin"
set SCRIPTNAME="godssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
