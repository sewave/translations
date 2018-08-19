@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U).gg"
set SCRIPTNAME="indianajonesandthelastcrusadegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
