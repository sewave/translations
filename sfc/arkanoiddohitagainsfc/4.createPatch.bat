@echo off
set T_FILENAME="TR_Arkanoid - Doh It Again (USA).sfc"
set S_FILENAME="Arkanoid - Doh It Again (USA).sfc"
set SCRIPTNAME="arkanoiddohitagainsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
