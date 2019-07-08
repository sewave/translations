@echo off
set T_FILENAME="Dragon Crystal (E) [!].sms"
set SCRIPTNAME="dragoncrystalsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
