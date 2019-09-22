@echo off
set T_FILENAME="TR_Somer Assault (U).pce"
set SCRIPTNAME="somerassaultpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
