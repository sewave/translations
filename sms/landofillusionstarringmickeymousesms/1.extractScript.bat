@echo off
set T_FILENAME="Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
set SCRIPTNAME="landofillusionstarringmickeymousesms"
python extract_all.py
REM java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
