@echo off
set T_FILENAME="TR_Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set S_FILENAME="Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set SCRIPTNAME="battleshipclapton2rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
