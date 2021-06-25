@echo off
set T_FILENAME="TR_Youkai Club (Japan).nes"
set SCRIPTNAME="youkaiclubnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20ED0:10,22ED0:10,24ED0:10,26ED0:10,277E0:40
pause
