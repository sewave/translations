@echo off
set T_FILENAME="TR_Thunder Force III (JU) [!].gen"
set S_FILENAME="Thunder Force III (JU) [!].gen"
set SCRIPTNAME="thunderforce3"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
