@echo off
set T_FILENAME="Actraiser (Japan) [T+ENG].sfc"
set SCRIPTNAME="actraiserjapsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
