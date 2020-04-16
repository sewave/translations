@echo off
set T_FILENAME="cm\CM.EXE"
set SCRIPTNAME="cobramission"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME2="cm\ICP.VOL"
set SCRIPTNAME2="cobramissionICP"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME2% %SCRIPTNAME2%.ext %SCRIPTNAME2%.off

set T_FILENAME3="cm\DAT.VOL"
set SCRIPTNAME3="cobramissionDAT"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME3% %SCRIPTNAME3%.ext %SCRIPTNAME3%.off

set T_FILENAME4="cm\MED.VOL"
set SCRIPTNAME4="cobramissionMED"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME4% %SCRIPTNAME4%.ext %SCRIPTNAME4%.off
pause
