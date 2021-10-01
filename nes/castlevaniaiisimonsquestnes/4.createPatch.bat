@echo off
set T_FILENAME="TR_Castlevania II - Simon's Quest (USA).nes"
set S_FILENAME="Castlevania II - Simon's Quest (USA).nes"
set SCRIPTNAME="castlevaniaiisimonsquestnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
