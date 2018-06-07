@echo off
set T_FILENAME="TR_Megaman Xtreme (U) [C][!].gbc"
set SCRIPTNAME="megamanxtremegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C0018:40,C01F0:8
pause
