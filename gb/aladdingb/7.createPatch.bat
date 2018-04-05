@echo off
set T_FILENAME="TR_Aladdin (U) [S][!].gb"
set S_FILENAME="Aladdin (U) [S][!].gb"
set SCRIPTNAME="aladdingb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
