@echo off
set T_FILENAME="TR_Home Improvement - Power Tool Pursuit! (USA).sfc"
set S_FILENAME="Home Improvement - Power Tool Pursuit! (USA).sfc"
set SCRIPTNAME="homeimprovementpowertoolpursuitsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
