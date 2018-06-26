@echo off
set T_FILENAME="TR_Darius Alpha (J).pce"
set S_FILENAME="Darius Alpha (J).pce"
set SCRIPTNAME="dariusalphapce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
