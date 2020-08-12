@echo off
set T_FILENAME="TR_Poseidon Wars 3-D (USA, Europe, Brazil).sms"
set S_FILENAME="Poseidon Wars 3-D (USA, Europe, Brazil).sms"
set SCRIPTNAME="poseidonwars3dsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
