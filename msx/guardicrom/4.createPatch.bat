@echo off
set T_FILENAME="TR_Guardic (1986) (Compile) (J).rom"
set S_FILENAME="Guardic (1986) (Compile) (J).rom"
set SCRIPTNAME="guardicrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
