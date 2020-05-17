@echo off
set T_FILENAME="TR_Flying Dragon - The Secret Scroll (U) [!].nes"
set S_FILENAME="Flying Dragon - The Secret Scroll (U) [!].nes"
set SCRIPTNAME="flyingdragonthesecretscrollnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
