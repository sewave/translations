@echo off
set T_FILENAME="TR_Smash T.V. (U) [!].nes"
set S_FILENAME="Smash T.V. (U) [!].nes"
set SCRIPTNAME="smashtvnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
