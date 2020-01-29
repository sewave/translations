@echo off
set T_FILENAME="TR_Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set S_FILENAME="Kid Kool and the Quest for the 7 Wonder Herbs (U) [!].nes"
set SCRIPTNAME="kidkoolandthequestforthe7wonderherbsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
