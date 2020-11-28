@echo off
set T_FILENAME="TR_Chou Fuyuu Yousai Exed Exes (Japan).nes"
set S_FILENAME="Chou Fuyuu Yousai Exed Exes (Japan).nes"
set SCRIPTNAME="choufuyuuyousaiexedexesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
