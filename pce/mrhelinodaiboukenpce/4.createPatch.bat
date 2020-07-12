@echo off
set T_FILENAME="TR_Mr. Heli no Daibouken (Japan).pce"
set S_FILENAME="Mr. Heli no Daibouken (Japan).pce"
set SCRIPTNAME="mrhelinodaiboukenpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
