@echo off
set T_FILENAME="Jungle Book, The (UE) [!].sms"
set SCRIPTNAME="junglebooksms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
