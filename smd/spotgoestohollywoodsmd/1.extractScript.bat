@echo off
set T_FILENAME="Spot Goes to Hollywood (U) (REV01) [!].bin"
set SCRIPTNAME="spotgoestohollywoodsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
