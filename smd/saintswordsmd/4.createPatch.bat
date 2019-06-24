@echo off
set T_FILENAME="TR_Saint Sword (U) [c][!].bin"
set S_FILENAME="Saint Sword (U) [c][!].bin"
set SCRIPTNAME="saintswordsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
