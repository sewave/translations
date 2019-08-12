@echo off
set T_FILENAME="Ace of Aces (E) [!].sms"
set SCRIPTNAME="aceofacessms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
