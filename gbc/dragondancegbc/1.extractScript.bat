@echo off
set T_FILENAME="Dragon Dance (USA) (SGB Enhanced).gbc"
set SCRIPTNAME="dragondancegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
