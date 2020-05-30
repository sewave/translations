@echo off
set T_FILENAME="TR_Peter Pan & The Pirates (U) [!].nes"
set S_FILENAME="Peter Pan & The Pirates (U) [!].nes"
set SCRIPTNAME="peterpanthepiratesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
