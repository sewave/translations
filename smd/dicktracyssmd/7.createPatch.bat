@echo off
set T_FILENAME="TR_Dick Tracy (W) [c][!].gen"
set S_FILENAME="Dick Tracy (W) [c][!].gen"
set SCRIPTNAME="dicktracyssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
