@echo off
set T_FILENAME="TR_Street Fighter 2010 - The Final Fight (USA).nes"
set S_FILENAME="Street Fighter 2010 - The Final Fight (USA).nes"
set SCRIPTNAME="streetfighter2010thefinalfightnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
