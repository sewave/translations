@echo off
set T_FILENAME="TR_Alien Storm (W) [!].gen"
set S_FILENAME="Alien Storm (W) [!].gen"
set SCRIPTNAME="alienstormsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
