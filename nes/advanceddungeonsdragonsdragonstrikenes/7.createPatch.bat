@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Dragon Strike (U) [!].nes"
set S_FILENAME="Advanced Dungeons & Dragons - Dragon Strike (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsdragonstrikenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
