@echo off
set T_FILENAME="TR_Zunou Senkan Galg (Japan).nes"
set S_FILENAME="Zunou Senkan Galg (Japan).nes"
set SCRIPTNAME="zunousenkangalgnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
