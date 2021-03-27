@echo off
set T_FILENAME="TR_Lucky Dime Caper Starring Donald Duck, The (Europe, Brazil).sms"
set SCRIPTNAME="luckydimecaperstarringdonaldduckthesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
