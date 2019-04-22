@echo off
set T_FILENAME="TR_Orguss (SG-1000).sg"
set S_FILENAME="Orguss (SG-1000).sg"
set SCRIPTNAME="orgusssg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
