@echo off
set T_FILENAME="TR_Harley's Humongous Adventure (USA).sfc"
set S_FILENAME="Harley's Humongous Adventure (USA).sfc"
set SCRIPTNAME="harleyshumongousadventuresfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
