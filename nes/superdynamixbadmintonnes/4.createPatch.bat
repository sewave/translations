@echo off
set T_FILENAME="TR_Super Dyna'mix Badminton (J) [b1][o2].nes"
set S_FILENAME="Super Dyna'mix Badminton (J) [b1][o2].nes"
set SCRIPTNAME="superdynamixbadmintonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
