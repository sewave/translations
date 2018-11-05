@echo off
set T_FILENAME="Tom and Jerry - The Movie (U) [!].gg"
set SCRIPTNAME="tomandjerrythemoviegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
