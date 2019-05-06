@echo off
set T_FILENAME="TR_Gadget Twins, The (U) [!].bin"
set S_FILENAME="Gadget Twins, The (U) [!].bin"
set SCRIPTNAME="gadgettwinsthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
