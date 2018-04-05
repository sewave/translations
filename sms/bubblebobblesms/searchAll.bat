@echo off 
set T_FILENAME="Bubble Bobble (E) [!].sms"
set SCRIPTNAME="bubblebobblesms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
