@echo off
set T_FILENAME="TR_Gadget Twins, The (U) [!].bin"
set SCRIPTNAME="gadgettwinsthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21934:40,38ABC:200
pause
