@echo off
set T_FILENAME="TR_Thunder Force II (U) [!].gen"
set S_FILENAME="Thunder Force II (U) [!].gen"
set SCRIPTNAME="thunderforce2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
