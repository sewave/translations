@echo off
set T_FILENAME="TR_Zool (U) [!].gen"
set S_FILENAME="Zool (U) [!].gen"
set SCRIPTNAME="zoolsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
