@echo off
set T_FILENAME="TR_Hammerin' Harry (E) [!].nes"
set SCRIPTNAME="hammerinharrynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38510:200
pause
