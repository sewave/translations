@echo off
set T_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [!].sms"
set SCRIPTNAME="luckysms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 C0 "..\EngDict.txt"
pause
