@echo off
set T_FILENAME="TR_Robocop Versus The Terminator (U).smc"
set S_FILENAME="Robocop Versus The Terminator (U).smc"
set SCRIPTNAME="robocopversustheterminatorsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
