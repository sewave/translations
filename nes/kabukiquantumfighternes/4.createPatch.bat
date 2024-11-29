@echo off
set T_FILENAME="TR_Kabuki - Quantum Fighter (USA).nes"
set S_FILENAME="Kabuki - Quantum Fighter (USA).nes"
set SCRIPTNAME="kabukiquantumfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
