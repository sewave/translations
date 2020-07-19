@echo off
set T_FILENAME="TR_Raging Fighter (USA, Europe).gb"
set SCRIPTNAME="ragingfightergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
