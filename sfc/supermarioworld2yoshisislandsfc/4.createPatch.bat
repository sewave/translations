@echo off
set T_FILENAME="TR_Super Mario World 2 - Yoshi's Island (USA, Asia) (Rev 1).sfc"
set S_FILENAME="Super Mario World 2 - Yoshi's Island (USA, Asia) (Rev 1).sfc"
set SCRIPTNAME="supermarioworld2yoshisislandsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
