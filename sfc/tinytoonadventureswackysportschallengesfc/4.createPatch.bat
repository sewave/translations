@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Wacky Sports Challenge (USA).sfc"
set S_FILENAME="Tiny Toon Adventures - Wacky Sports Challenge (USA).sfc"
set SCRIPTNAME="tinytoonadventureswackysportschallengesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
