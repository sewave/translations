@echo off
set T_FILENAME="Actman (1984) (Mass Tael) (J).rom"
set SCRIPTNAME="actmanrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
