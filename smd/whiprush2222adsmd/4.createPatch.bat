@echo off
set T_FILENAME="TR_Whip Rush 2222 AD (U) [!].bin"
set S_FILENAME="Whip Rush 2222 AD (U) [!].bin"
set SCRIPTNAME="whiprush2222adsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
