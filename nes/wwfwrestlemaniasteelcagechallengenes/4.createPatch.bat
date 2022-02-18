@echo off
set T_FILENAME="TR_WWF Wrestlemania Steel Cage Challenge (USA).nes"
set S_FILENAME="WWF Wrestlemania Steel Cage Challenge (USA).nes"
set SCRIPTNAME="wwfwrestlemaniasteelcagechallengenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
