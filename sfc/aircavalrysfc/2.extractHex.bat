@echo off
set T_FILENAME="TR_Air Cavalry (USA).sfc"
set SCRIPTNAME="aircavalrysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F8140:80,F8360:80,F8480:80,F85A0:80,F96A0:80,F88E0:80,F8A40:40,F8B00:200,25C64:C0
pause
