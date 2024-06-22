@echo off
set T_FILENAME="TR_Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set S_FILENAME="Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set SCRIPTNAME="alexkiddinmiracleworldsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_cmp_172b1.gfx 172B1
java -jar Hextractor.jar -if %T_FILENAME% title_cmp_13332.gfx 13332
java -jar Hextractor.jar -if %T_FILENAME% score_cmp_1c000.gfx 1C000
java -jar Hextractor.jar -if %T_FILENAME% shop_cmp_c9e1.gfx C9E1
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
