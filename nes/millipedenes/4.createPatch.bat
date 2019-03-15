@echo off
set T_FILENAME="TR_Millipede (U) [!].nes"
set S_FILENAME="Millipede (U) [!].nes"
set SCRIPTNAME="millipedenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
