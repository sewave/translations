@echo off
set T_FILENAME="TR_Truxton (W) [!].gen"
set S_FILENAME="Truxton (W) [!].gen"
set SCRIPTNAME="truxtonsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
