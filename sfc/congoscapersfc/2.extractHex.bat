@echo off
set T_FILENAME="TR_Congo's Caper (USA).sfc"
set SCRIPTNAME="congoscapersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50C07:40,51007:40,50777:20,507D7:30,508E7:20,50977:20,514E7:20,51587:20,50717:20,50817:20,50847:20
pause
