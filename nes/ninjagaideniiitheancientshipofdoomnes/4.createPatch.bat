@echo off
set T_FILENAME="TR_Ninja Gaiden III - The Ancient Ship of Doom (USA).nes"
set S_FILENAME="Ninja Gaiden III - The Ancient Ship of Doom (USA).nes"
set SCRIPTNAME="ninjagaideniiitheancientshipofdoomnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
