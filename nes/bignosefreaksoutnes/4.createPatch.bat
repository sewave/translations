@echo off
set T_FILENAME="TR_Big Nose Freaks Out (USA) (Unl).nes"
set S_FILENAME="Big Nose Freaks Out (USA) (Unl).nes"
set SCRIPTNAME="bignosefreaksoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
