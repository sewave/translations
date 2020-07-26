@echo off
set T_FILENAME="TR_Second Samurai (Europe).md"
set SCRIPTNAME="secondsamuraismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
