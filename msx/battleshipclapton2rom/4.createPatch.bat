@echo off
set T_FILENAME="TR_Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set S_FILENAME="Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set SCRIPTNAME="battleshipclapton2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
