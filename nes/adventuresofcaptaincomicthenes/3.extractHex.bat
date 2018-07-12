@echo off
set T_FILENAME="TR_Adventures of Captain Comic, The (Color Dreams) [!].nes"
set SCRIPTNAME="adventuresofcaptaincomicthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11550-11770,11D10:70,110F0:90
pause
