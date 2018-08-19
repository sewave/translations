@echo off
set T_FILENAME="TR_Dick Tracy (W) [c][!].gen"
set SCRIPTNAME="dicktracyssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
