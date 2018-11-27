@echo off
set T_FILENAME="TR_Zero Wing (E) [c][!].bin"
set S_FILENAME="Zero Wing (E) [c][!].bin"
set SCRIPTNAME="zerowingsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
