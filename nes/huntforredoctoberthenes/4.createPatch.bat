@echo off
set T_FILENAME="TR_Hunt for Red October, The (U) (REV1) [!].nes"
set S_FILENAME="Hunt for Red October, The (U) (REV1) [!].nes"
set SCRIPTNAME="huntforredoctoberthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
