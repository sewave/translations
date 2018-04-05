@echo off
set T_FILENAME="TR_Valis III (U) [!].bin"
set S_FILENAME="Valis III (U) [!].bin"
set SCRIPTNAME="valisiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
