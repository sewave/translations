@echo off 
set T_FILENAME="Bubble Bobble (E) [!].sms"
set SCRIPTNAME="bubblebobblesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
