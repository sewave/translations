@echo off
set T_FILENAME="TR_Inspector Gadget (U).smc"
set S_FILENAME="Inspector Gadget (U).smc"
set SCRIPTNAME="inspectorgadgetsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
