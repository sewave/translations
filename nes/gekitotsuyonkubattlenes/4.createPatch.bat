@echo off
set T_FILENAME="TR_Gekitotsu Yonku Battle (J) [!].nes"
set S_FILENAME="Gekitotsu Yonku Battle (J) [!].nes"
set SCRIPTNAME="gekitotsuyonkubattlenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
