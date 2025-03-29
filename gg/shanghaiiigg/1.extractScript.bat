@echo off
set T_FILENAME="Shanghai II (Japan) (Rev A).gg"
set SCRIPTNAME="shanghaiiigg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
