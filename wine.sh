mkdir wine #make direectory where wine bottles will be stored
cd wine
ll #list dir contents
#create fresh bottle:
WINEARCH=win32 #32 bit programs (most apps)
WINEARCH=win64 #64 bit programs (most games)
#then
WINEPREFIX=~/wine/"bottlename" winetricks # or winecfg
#options:
#(almost always) Select the default wineprefix
#What would you like to do to this wineprefix?
#install DLL and components - app website to see requirements
#.NET may produce errors, check Chris Titus vid 'intro to wine' @ 11:00ish

#kill wine
wineserver -k
#force kill
wineserver -k9