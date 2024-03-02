@echo off
set T_FILENAME="TR_Donald no Magical World (Japan) (En,Ja).gg"
set S_FILENAME="Donald no Magical World (Japan) (En,Ja).gg"
set SCRIPTNAME="donaldnomagicalworldgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
