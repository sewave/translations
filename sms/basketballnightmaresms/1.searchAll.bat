@echo off
set T_FILENAME="Basket Ball Nightmare (E) [!].sms"
set SCRIPTNAME="basketballnightmaresms"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
