@echo off
set T_FILENAME="TR_Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set S_FILENAME="Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set SCRIPTNAME="mamonohunteryoukodai7nokeishousmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
