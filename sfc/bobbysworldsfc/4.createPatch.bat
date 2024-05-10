@echo off
set T_FILENAME="TR_Bobby's World (USA) (Proto).sfc"
set S_FILENAME="Bobby's World (USA) (Proto).sfc"
set SCRIPTNAME="bobbysworldsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
