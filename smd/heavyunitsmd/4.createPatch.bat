@echo off
set T_FILENAME="TR_Heavy Unit (J) [!].bin"
set S_FILENAME="Heavy Unit (J) [!].bin"
set SCRIPTNAME="heavyunitsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
