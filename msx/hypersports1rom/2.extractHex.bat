@echo off
set T_FILENAME="TR_Hyper Sports 1 (1984) (Konami) (J).rom"
set SCRIPTNAME="hypersports1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
