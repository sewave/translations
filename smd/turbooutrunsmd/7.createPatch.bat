@echo off
set T_FILENAME="TR_Turbo Outrun (JE) [c][!].gen"
set S_FILENAME="Turbo Outrun (JE) [c][!].gen"
set SCRIPTNAME="turbooutrunsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
