@echo off
set T_FILENAME="Kishin Douji Zenki (Japan) [T+ENG].gg"
set SCRIPTNAME="kishindoujizenkigg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
