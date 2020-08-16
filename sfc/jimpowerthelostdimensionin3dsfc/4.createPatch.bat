@echo off
set T_FILENAME="TR_Jim Power - The Lost Dimension in 3D (USA).sfc"
set S_FILENAME="Jim Power - The Lost Dimension in 3D (USA).sfc"
set SCRIPTNAME="jimpowerthelostdimensionin3dsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
