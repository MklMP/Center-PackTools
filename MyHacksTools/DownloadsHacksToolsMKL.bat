@echo off

echo echo -e '\033]10;#00FF00\007' > Urls.txt
echo echo -e '\033]11;#000000\007' >> Urls.txt

::Osint
echo git clone https://github.com/ASHWIN990/ADB-Toolkit.git Descargas/Osint/ADB-Toolkit >> Urls.txt
echo git clone https://github.com/laramies/theHarvester.git Descargas/Osint/TheHarvester >> Urls.txt
echo git clone https://github.com/lockfale/osint-framework.git Descargas/Osint/Osint-framework >> Urls.txt
echo git clone https://github.com/smicallef/spiderfoot.git Descargas/Osint/Spiderfoot >> Urls.txt
echo git clone https://github.com/lanmaster53/recon-ng.git Descargas/Osint/Recon-ng >> Urls.txt
echo git clone https://github.com/sherlock-project/sherlock.git Descargas/Osint/Sherlock >> Urls.txt
echo git clone https://github.com/twintproject/twint.git Descargas/Osint/Twint >> Urls.txt
echo git clone https://github.com/sundowndev/PhoneInfoga.git Descargas/Osint/PhoneInfoga >> Urls.txt


::metadatos
echo git clone https://github.com/exiftool/exiftool.git Descargas/ExtraccionDatos/Exiftool >> Urls.txt
echo git clone https://github.com/jvoisin/mat2.git Descargas/ExtraccionDatos/mat2 >> Urls.txt
echo git clone https://github.com/ElevenPaths/FOCA.git Descargas/ExtraccionDatos/FOCA >> Urls.txt
echo git clone https://github.com/MediaArea/MediaInfo.git Descargas/ExtraccionDatos/MediaInfo >> Urls.txt
echo git clone https://github.com/hvdwolf/pyExifToolGUI.git Descargas/ExtraccionDatos/ExifToolGUI >> Urls.txt
echo git clone https://github.com/laramies/metagoofil.git Descargas/ExtraccionDatos/Metagoofil >> Urls.txt

::pyshing
echo git clone https://github.com/UndeadSec/SocialFish.git Descargas/Pyshing/SocialFish >> Urls.txt
echo git clone https://github.com/htr-tech/zphisher.git Descargas/Pyshing/Zphiser >> Urls.txt

::Wifi
echo git clone https://github.com/s4vitar/evilTrust.git Descargas/AtaquesWifi/EvilTrust >> Urls.txt
echo git clone https://github.com/arismelachroinos/lscript.git Descargas/AtaquesWifi/LazyScript >> Urls.txt
echo git clone https://github.com/derv82/wifite Descargas/AtaquesWifi/Wifite >> Urls.txt
echo git clone https://github.com/aanarchyy/bully.git Descargas/AtaquesWifi/Bully >> Urls.txt
echo git clone https://github.com/evilsocket/opensnitch.git Descargas/AtaquesWifi/OpenSnitch >> Urls.txt

::scaner
echo git clone https://github.com/wpscanteam/wpscan.git Descargas/AnalisisEscaneo/WpsScan >> Urls.txt
echo git clone https://github.com/sullo/nikto.git Descargas/AnalisisEscaneo/Nikto >> Urls.txt
echo git clone https://github.com/lgandx/Responder.git Descargas/AnalisisEscaneo/Responder >> Urls.txt
echo git clone https://github.com/achillean/shodan-python.git Descargas/AnalisisEscaneo/Shodan >> Urls.txt
echo git clone https://github.com/Ettercap/ettercap.git Descargas/AnalisisEscaneo/Ettercap >> Urls.txt

::exploit
echo git clone https://github.com/beefproject/beef.git Descargas/Explotar/Beef >> Urls.txt
echo git clone https://github.com/EmpireProject/Empire.git Descargas/Explotar/Empire >> Urls.txt
echo git clone https://github.com/vanhauser-thc/thc-hydra.git Descargas/Explotar/Thc-Hydra >> Urls.txt

::anonimato
echo git clone https://github.com/torproject/tor.git Descargas/SeguridadAnonimato/Tor >> Urls.txt

::Total Tools=28

echo rm Urls.txt >> Urls.txt

start "" "MyHacksTools/PortableGit/git-bash.exe" -c "source Urls.txt" 
exit