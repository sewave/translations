@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (UE) [!].gb"
set SCRIPTNAME="indianajonesandthelastcrusadegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
