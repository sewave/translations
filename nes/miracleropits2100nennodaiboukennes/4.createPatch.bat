@echo off
set T_FILENAME="TR_Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set S_FILENAME="Miracle Ropit's - 2100 Nen no Daibouken (Japan).nes"
set SCRIPTNAME="miracleropits2100nennodaiboukennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
