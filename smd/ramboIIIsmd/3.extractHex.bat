@echo off
set T_FILENAME="TR_Rambo III (W) (REV01) [!].bin"
set SCRIPTNAME="ramboIIIsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32916-32A16
pause
