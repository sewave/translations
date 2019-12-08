@echo off
set T_FILENAME="TR_Goonies, The (1986) (Konami) (J).rom"
set SCRIPTNAME="gooniestherom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
