@echo off
set T_FILENAME="TR_Protector, The (1985) (Pony Cannon) (J).rom"
set S_FILENAME="Protector, The (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="protectortherom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
