@echo off
set T_FILENAME="TR_Attack of the Killer Tomatoes (USA).nes"
set S_FILENAME="Attack of the Killer Tomatoes (USA).nes"
set SCRIPTNAME="attackofthekillertomatoesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
