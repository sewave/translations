@echo off
set T_FILENAME="Alisia Dragoon (U) [T+ESP].bin"
set SCRIPTNAME="alisiadragoon"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6D628-6D828
pause
