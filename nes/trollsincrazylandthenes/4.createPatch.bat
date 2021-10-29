@echo off
set T_FILENAME="TR_Trolls in Crazyland, The (Europe).nes"
set S_FILENAME="Trolls in Crazyland, The (Europe).nes"
set SCRIPTNAME="trollsincrazylandthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
