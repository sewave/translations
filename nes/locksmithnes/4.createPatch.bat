@echo off
set T_FILENAME="TR_Locksmith (Asia) (Ja) (PAL) (Unl).nes"
set S_FILENAME="Locksmith (Asia) (Ja) (PAL) (Unl).nes"
set SCRIPTNAME="locksmithnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
