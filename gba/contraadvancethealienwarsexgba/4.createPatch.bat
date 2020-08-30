@echo off
set T_FILENAME="TR_Contra Advance - The Alien Wars EX (USA).gba"
set S_FILENAME="Contra Advance - The Alien Wars EX (USA).gba"
set SCRIPTNAME="contraadvancethealienwarsexgba"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
