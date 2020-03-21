@echo off
set T_FILENAME="TR_Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set SCRIPTNAME="battleshipclapton2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
