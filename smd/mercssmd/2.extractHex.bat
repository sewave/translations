@echo off
set T_FILENAME="TR_Senjou no Ookami II ~ Mercs (World).md"
set SCRIPTNAME="mercssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C50E4:20
pause
