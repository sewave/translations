@echo off
set T_FILENAME="TR_SWAT Kats - The Radical Squadron (USA).sfc"
set S_FILENAME="SWAT Kats - The Radical Squadron (USA).sfc"
set SCRIPTNAME="swatkatstheradicalsquadronsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
