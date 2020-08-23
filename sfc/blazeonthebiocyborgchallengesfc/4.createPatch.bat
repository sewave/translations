@echo off
set T_FILENAME="TR_BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set S_FILENAME="BlaZeon - The Bio-Cyborg Challenge (USA).sfc"
set SCRIPTNAME="blazeonthebiocyborgchallengesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
