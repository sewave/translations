@echo off
set T_FILENAME="TR_Archon (U) [!].nes"
set SCRIPTNAME="archonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4110:80,6FC0:10,8380:90,8480:60,80F0:10,81F0:20,82B0:60,84E0:110
pause
