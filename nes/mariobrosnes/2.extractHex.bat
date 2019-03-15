@echo off
set T_FILENAME="TR_Mario Bros. (JU) [!].nes"
set SCRIPTNAME="mariobrosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4C30:60,5210:100,5FB0:60,58D0:40,51B0:10
pause
