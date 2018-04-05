@echo off
set T_FILENAME="TR_Disney's Aladdin (U) [!].gen"
set SCRIPTNAME="disneysaladdinsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 129F80-12A060,12A260:80
pause
