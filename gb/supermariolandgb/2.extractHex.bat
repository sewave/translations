@echo off
set T_FILENAME="TR_Super Mario Land (World) (Rev A).gb"
set SCRIPTNAME="supermariolandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9182:10,91D2:10,9282:20,8612:20,8552:30
pause
