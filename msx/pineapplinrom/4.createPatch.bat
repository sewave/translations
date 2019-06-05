@echo off
set T_FILENAME="TR_Pine Applin (1984) (Zap) (J).rom"
set S_FILENAME="Pine Applin (1984) (Zap) (J).rom"
set SCRIPTNAME="pineapplinrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
