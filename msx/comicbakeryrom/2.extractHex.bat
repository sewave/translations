@echo off
set T_FILENAME="TR_Comic Bakery (1984) (Konami) (J).rom"
set SCRIPTNAME="comicbakeryrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2343:20,2F4C:30
pause
