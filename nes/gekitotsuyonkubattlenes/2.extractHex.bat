@echo off
set T_FILENAME="TR_Gekitotsu Yonku Battle (J) [!].nes"
set SCRIPTNAME="gekitotsuyonkubattlenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 853E:100,1B2C8:10
pause
