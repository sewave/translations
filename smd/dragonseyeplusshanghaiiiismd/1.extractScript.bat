@echo off
set T_FILENAME="Dragon's Eye Plus - Shanghai III (Japan).md"
set SCRIPTNAME="dragonseyeplusshanghaiiiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
