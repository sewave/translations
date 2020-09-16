@echo off
set T_FILENAME="TR_Ivan 'Ironman' Stewart's Super Off Road (USA).nes"
set S_FILENAME="Ivan 'Ironman' Stewart's Super Off Road (USA).nes"
set SCRIPTNAME="ivanironmanstewartssuperoffroadnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
