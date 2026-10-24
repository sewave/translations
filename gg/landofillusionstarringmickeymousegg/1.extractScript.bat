@echo off
set T_FILENAME="Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set SCRIPTNAME="landofillusionstarringmickeymousegg"
python extract_all.py
java -jar Hextractor.jar -a credits.tbl %T_FILENAME% credits.ext credits.off
pause
