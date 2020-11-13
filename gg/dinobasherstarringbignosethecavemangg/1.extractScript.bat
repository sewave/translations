@echo off
set T_FILENAME="Dinobasher - Starring Bignose the Caveman [Proto].gg"
set SCRIPTNAME="dinobasherstarringbignosethecavemangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
