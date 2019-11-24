@echo off
set T_FILENAME="TR_Comic Bakery (1984) (Konami) (J).rom"
set S_FILENAME="Comic Bakery (1984) (Konami) (J).rom"
set SCRIPTNAME="comicbakeryrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
