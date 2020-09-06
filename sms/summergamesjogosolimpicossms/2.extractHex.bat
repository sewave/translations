@echo off
set T_FILENAME="TR_Summer Games ~ Jogos Olimpicos (Europe, Brazil).sms"
set SCRIPTNAME="summergamesjogosolimpicossms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9FB:8,AFB:18
pause
