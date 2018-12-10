@echo off
set T_FILENAME="TR_1942 (U) [C][!].gbc"
set S_FILENAME="1942 (U) [C][!].gbc"
set SCRIPTNAME="1942gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
