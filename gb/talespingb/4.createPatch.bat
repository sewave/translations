@echo off
set T_FILENAME="TR_TaleSpin (USA).gb"
set S_FILENAME="TaleSpin (USA).gb"
set SCRIPTNAME="talespingb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
