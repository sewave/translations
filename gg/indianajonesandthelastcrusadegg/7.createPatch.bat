@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U).gg"
set S_FILENAME="Indiana Jones and the Last Crusade (U).gg"
set SCRIPTNAME="indianajonesandthelastcrusadegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
