@echo off
set T_FILENAME="Penguin Adventure (Korea) (Unl) (Pirate).sms"
set SCRIPTNAME="penguinadventuresms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
