@echo off
set T_FILENAME="Formation Z (Japan) (Rev A).nes"
set SCRIPTNAME="formationznes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
