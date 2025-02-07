@echo off
set T_FILENAME="TR_Centipede (USA).col"
set SCRIPTNAME="centipedecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32DB:8,3303:8,3273:8
pause
