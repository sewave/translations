@echo off
set T_FILENAME="TR_Pine Applin (1984) (Zap) (J).rom"
set SCRIPTNAME="pineapplinrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2457:08,24CF:08,24F7:20
pause
