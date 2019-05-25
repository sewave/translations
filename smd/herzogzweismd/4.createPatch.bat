@echo off
set T_FILENAME="TR_Herzog Zwei (UE) [!].bin"
set S_FILENAME="Herzog Zwei (UE) [!].bin"
set SCRIPTNAME="herzogzweismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
