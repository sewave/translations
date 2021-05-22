@echo off
set T_FILENAME="TR_3 in 1 Supergun (Asia) (Unl).nes"
set S_FILENAME="3 in 1 Supergun (Asia) (Unl).nes"
set SCRIPTNAME="3in1supergunnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
