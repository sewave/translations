@echo off
set T_FILENAME="TR_Spot Goes to Hollywood (U) (REV01) [!].bin"
set SCRIPTNAME="spotgoestohollywoodsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
