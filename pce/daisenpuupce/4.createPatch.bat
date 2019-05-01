@echo off
set T_FILENAME="TR_Daisenpuu (Japan).pce"
set S_FILENAME="Daisenpuu (Japan).pce"
set SCRIPTNAME="daisenpuupce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
