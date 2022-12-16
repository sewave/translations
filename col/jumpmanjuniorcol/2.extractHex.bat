@echo off
set T_FILENAME="TR_Jumpman Junior (1984) (Epyx).col"
set SCRIPTNAME="jumpmanjuniorcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
