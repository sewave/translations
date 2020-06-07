@echo off
set T_FILENAME="TR_Last Starfighter, The (U) [!].nes"
set S_FILENAME="Last Starfighter, The (U) [!].nes"
set SCRIPTNAME="laststarfighterthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
