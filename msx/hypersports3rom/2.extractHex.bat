@echo off
set T_FILENAME="TR_Hyper Sports 3 (1985) (Konami) (J).rom"
set SCRIPTNAME="hypersports3rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
