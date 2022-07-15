@echo off
set T_FILENAME="TR_Rollerblade Racer (USA).nes"
set SCRIPTNAME="rollerbladeracernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 28030:80,2C030:80,2D030:80,2E030:80,2F030:80,30030:80,31030:80,29A10:300
pause
