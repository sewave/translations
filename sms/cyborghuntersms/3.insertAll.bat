@echo off
set T_FILENAME="TR_Cyborg Hunter (USA, Europe).sms"
set S_FILENAME="Cyborg Hunter (USA, Europe).sms"
set SCRIPTNAME="cyborghuntersms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% elevator_13053.gfx 13053
REM java -jar Hextractor.jar -if %T_FILENAME% area_a_14000.gfx 14000
REM java -jar Hextractor.jar -if %T_FILENAME% area_b_14148.gfx 14148
REM java -jar Hextractor.jar -if %T_FILENAME% area_d_143D0.gfx 143D0
REM java -jar Hextractor.jar -if %T_FILENAME% area_e_1450F.gfx 1450F
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
