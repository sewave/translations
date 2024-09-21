@echo off
set T_FILENAME="TR_Wally Bear and the No! Gang (USA) (Unl).nes"
set S_FILENAME="Wally Bear and the No! Gang (USA) (Unl).nes"
set SCRIPTNAME="wallybearandthenogangnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
