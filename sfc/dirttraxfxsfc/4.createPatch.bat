@echo off
set T_FILENAME="TR_Dirt Trax FX (USA).sfc"
set S_FILENAME="Dirt Trax FX (USA).sfc"
set SCRIPTNAME="dirttraxfxsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
