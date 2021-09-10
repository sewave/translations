@echo off
set T_FILENAME="TR_Master Shooter (Asia) (Unl).nes"
set S_FILENAME="Master Shooter (Asia) (Unl).nes"
set SCRIPTNAME="mastershooternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
