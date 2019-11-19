@echo off
set T_FILENAME="TR_Hyper Sports 2 (1984) (Konami) (J).rom"
set SCRIPTNAME="hypersports2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
