@echo off
set T_FILENAME="TR_Battle Squadron (UE) [!].bin"
set S_FILENAME="Battle Squadron (UE) [!].bin"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
