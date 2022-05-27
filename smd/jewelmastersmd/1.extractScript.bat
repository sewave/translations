@echo off
set T_FILENAME="Jewel Master (USA, Europe) (Rev A).md"
set SCRIPTNAME="jewelmastersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
