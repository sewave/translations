@echo off
set T_FILENAME="TR_Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set S_FILENAME="Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set SCRIPTNAME="greenberetnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
