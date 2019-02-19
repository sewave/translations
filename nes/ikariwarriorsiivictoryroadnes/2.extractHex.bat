@echo off
set T_FILENAME="TR_Ikari Warriors II - Victory Road (U) [!].nes"
set SCRIPTNAME="ikariwarriorsiivictoryroadnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 282C0:80,2BDA0:30
pause
