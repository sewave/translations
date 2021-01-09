@echo off
set T_FILENAME="TR_Jumpin' Kid - Jack to Mame no Ki Monogatari (Japan).nes"
set SCRIPTNAME="jumpinkidjacktomamenokimonogatarines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EE20:10,2B790:20,2FF10:80,2F930:10,2F970:20
pause
