@echo off
set T_FILENAME="TR_Target Earth (U) [!].bin"
set SCRIPTNAME="targetearthsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8CB2:800,4CC72:20,4CD52:20,4CDF2:200
pause
