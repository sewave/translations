@echo off
set T_FILENAME="TR_Aerostar (USA, Europe).gb"
set SCRIPTNAME="aerostargb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E7CD:40,139D0:20
pause
