@echo off
set T_FILENAME="TR_Mohawk & Headphone Jack (USA).sfc"
set S_FILENAME="Mohawk & Headphone Jack (USA).sfc"
set SCRIPTNAME="mohawkheadphonejacksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
