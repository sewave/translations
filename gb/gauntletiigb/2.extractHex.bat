@echo off
set T_FILENAME="TR_Gauntlet II (USA, Europe).gb"
set SCRIPTNAME="gauntletiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25870:30,25B70:10,25BB0:150
pause
