@echo off
set T_FILENAME="TR_Aladdin (USA, Europe).gg"
set SCRIPTNAME="aladdingg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BF30:40,8160:20,8580:40
pause
