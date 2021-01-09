@echo off
set T_FILENAME="TR_Shadow of the Ninja (USA).nes"
set SCRIPTNAME="shadowoftheninjanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D790:60,28810:300,3BB10:C0
pause
