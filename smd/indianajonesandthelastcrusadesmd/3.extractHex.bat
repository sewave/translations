@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U) [c][!].gen"
set SCRIPTNAME="indianajonesandthelastcrusadesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
