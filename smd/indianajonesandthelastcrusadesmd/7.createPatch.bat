@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (U) [c][!].gen"
set S_FILENAME="Indiana Jones and the Last Crusade (U) [c][!].gen"
set SCRIPTNAME="indianajonesandthelastcrusadesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
