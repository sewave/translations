@echo off
set T_FILENAME="Chuck Rock II - Son of Chuck (U) [!].gg"
set SCRIPTNAME="chuckrockiisonofchuckgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
