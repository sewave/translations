@echo off
set T_FILENAME="TR_Thunder Force III (JU) [!].gen"
set SCRIPTNAME="thunderforce3"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
