@echo off
set T_FILENAME="TR_Super Adventure Island II (USA).sfc"
set SCRIPTNAME="superadventureislandiisfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 81900:80,87E50:A0,87F50:A0,8A000:1000,C835C:70,C86FA:80
pause
