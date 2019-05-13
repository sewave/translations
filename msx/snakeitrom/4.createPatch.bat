@echo off
set T_FILENAME="TR_Snake-It (1986) (Hal) (J).rom"
set S_FILENAME="Snake-It (1986) (Hal) (J).rom"
set SCRIPTNAME="snakeitrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
