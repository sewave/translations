@echo off
set T_FILENAME="Fushigi no Oshiro Pit Pot (J) [!].sms"
set SCRIPTNAME="fushiginooshiropitpotsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
