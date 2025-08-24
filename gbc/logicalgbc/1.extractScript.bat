@echo off
set T_FILENAME="Logical (USA).gbc"
set SCRIPTNAME="logicalgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
