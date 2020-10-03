@echo off
set T_FILENAME="TR_Dragon's Eye Plus - Shanghai III (Japan).md"
set SCRIPTNAME="dragonseyeplusshanghaiiiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
