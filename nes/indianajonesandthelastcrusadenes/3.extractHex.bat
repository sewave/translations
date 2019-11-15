@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U) (UBI Soft) [!].nes"
set SCRIPTNAME="indianajonesandthelastcrusadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
