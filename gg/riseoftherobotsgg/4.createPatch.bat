@echo off
set T_FILENAME="TR_Rise of the Robots (USA, Europe).gg"
set S_FILENAME="Rise of the Robots (USA, Europe).gg"
set SCRIPTNAME="riseoftherobotsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
