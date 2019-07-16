@echo off
set T_FILENAME="TR_Top Gun - The Second Mission (U) [!].nes"
set SCRIPTNAME="topgunthesecondmissionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25460:90,255B0:10,25B90:80
pause
