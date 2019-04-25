@echo off
set T_FILENAME="TR_Earnest Evans (U) [!].bin"
set S_FILENAME="Earnest Evans (U) [!].bin"
set SCRIPTNAME="earnestevanssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
