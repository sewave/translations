@echo off
set T_FILENAME="TR_Terra Cresta (U) [!].nes"
set S_FILENAME="Terra Cresta (U) [!].nes"
set SCRIPTNAME="terracrestanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
