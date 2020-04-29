@echo off
set T_FILENAME="TR_Snow White in Happily Ever After (USA).sfc"
set S_FILENAME="Snow White in Happily Ever After (USA).sfc"
set SCRIPTNAME="snowwhiteinhappilyeveraftersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
