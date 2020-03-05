@echo off
set T_FILENAME="TR_Boggy'84 (1984) (Nippon Columbia) (J).rom"
set SCRIPTNAME="boggy84rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
