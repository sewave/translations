@echo off
set T_FILENAME="TR_Urban Strike (USA).gg"
set SCRIPTNAME="urbanstrikegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7EC36:C0,7E796:60,7EEF6:60,7F396:C0,7F656:60,7E4D6:C0
pause
