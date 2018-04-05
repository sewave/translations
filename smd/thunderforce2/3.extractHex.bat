@echo off
set T_FILENAME="TR_Thunder Force II (U) [!].gen"
set SCRIPTNAME="thunderforce2"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
