@echo off
set T_FILENAME="TR_Ultimate Qix (U) [!].bin"
set S_FILENAME="Ultimate Qix (U) [!].bin"
set SCRIPTNAME="ultimateqixsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
