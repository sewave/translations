@echo off
set T_FILENAME="TR_Dynowarz - The Destruction of Spondylus (U) [!].nes"
set S_FILENAME="Dynowarz - The Destruction of Spondylus (U) [!].nes"
set SCRIPTNAME="dynowarzthedestructionofspondylusnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
