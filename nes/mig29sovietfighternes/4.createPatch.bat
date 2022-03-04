@echo off
set T_FILENAME="TR_MiG 29 - Soviet Fighter (USA) (Unl).nes"
set S_FILENAME="MiG 29 - Soviet Fighter (USA) (Unl).nes"
set SCRIPTNAME="mig29sovietfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
