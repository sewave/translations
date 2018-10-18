@echo off
set T_FILENAME="TR_Two Crude Dudes (U) [!].gen"
set S_FILENAME="Two Crude Dudes (U) [!].gen"
set SCRIPTNAME="twocrudedudessmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
