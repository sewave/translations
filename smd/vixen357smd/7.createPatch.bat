@echo off
set T_FILENAME="TR_Vixen 357 (J) [T+ENG].gen"
set S_FILENAME="Vixen 357 (J) [!].gen"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
