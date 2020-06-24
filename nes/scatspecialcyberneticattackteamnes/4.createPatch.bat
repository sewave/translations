@echo off
set T_FILENAME="TR_S.C.A.T. - Special Cybernetic Attack Team (U) [!].nes"
set S_FILENAME="S.C.A.T. - Special Cybernetic Attack Team (U) [!].nes"
set SCRIPTNAME="scatspecialcyberneticattackteamnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
