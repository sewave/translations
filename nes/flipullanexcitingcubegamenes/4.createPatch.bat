@echo off
set T_FILENAME="TR_Flipull - An Exciting Cube Game (J).nes"
set S_FILENAME="Flipull - An Exciting Cube Game (J).nes"
set SCRIPTNAME="flipullanexcitingcubegamenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
