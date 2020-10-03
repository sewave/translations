@echo off
set T_FILENAME="TR_Golgo 13 - Top Secret Episode (USA).nes"
set S_FILENAME="Golgo 13 - Top Secret Episode (USA).nes"
set SCRIPTNAME="golgo13topsecretepisodenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
