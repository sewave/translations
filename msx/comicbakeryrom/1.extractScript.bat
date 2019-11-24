@echo off
set T_FILENAME="Comic Bakery (1984) (Konami) (J).rom"
set SCRIPTNAME="comicbakeryrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
