@echo off
set T_FILENAME="Dinobasher Starring Bignose the Caveman (E) (Prototype) [!].sms"
set SCRIPTNAME="dinobasherstarringbignosethecavemansms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
