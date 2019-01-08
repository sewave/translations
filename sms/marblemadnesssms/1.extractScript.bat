@echo off
set T_FILENAME="Marble Madness (UE) [!].sms"
set SCRIPTNAME="marblemadnesssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
