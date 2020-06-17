@echo off
set T_FILENAME="TR_Starship Hector (USA).nes"
set SCRIPTNAME="starshiphectornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A8F0:10,173F0:20,17FF0:10,175D0:20
pause
