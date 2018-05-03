# Salt-tilan forkkaus ja ajaminen Gitin reposta

Palvelinten hallinta -kurssin harjoitus 5.

Ympäristönä toimi Asus UX410U-läppäri, jossa asennettuna Win 10 uusimmilla julkaistuilla päivityksillä. Harjoituksessa käytin Linuxia livetikulta, julkaisu ja versio Xubuntu 16.04-3. Kaikki ohjeet osoitteesta www.terokarvinen.com ellei toisin mainittu.

Aloitin harjoituksen kiinnittämällä livetikun koneeseeni ja painamalla esc-näppäintä käynnistyksessä ennen Windowsin lataamista, jolloin pääsin boot-valikkoon ja pystyin valitsemaan käynnistysmediaksi USB-tikun, ja Xubuntu käynnistyi.

Ensimmäiset toimenpiteet: kirjoitin terminaaliin (Win + T) setxkbmap fi (näppäimistö suomeksi) ja sudo apt-get update (pakettien päivitys).

## Tilan forkkaus
Aloitin forkkaamalla Tero Karvisen reposition osoitteesta https://github.com/terokarvinen/sirotin. Nimesin oman reponi menneen vapun kunniaksi simaksi. Muokkasin /srv/salt/desk/-kansiosta löytyvää init.sls-tiedostoa, lyhensin siinä asennettavia ohjelmia niin, että siihen jäivät VLC, VirtualBox ja Gimp.

Seuraavaksi muokkasin hellotero.txt-tiedostoa /srv/salt/-kansiossa. Vaihdoin tekstiksi "More great Linux and Salt stuff on www.liinuksi.wordpress.com!" ja nimeksi helloiina.txt. Muokkasin myös yläkansion nimeksi helloiina.

Muokkasin /srv/salt/top.sls-tiedostoa, jolla jaetaan orjille ajettavat tilat. Vaihdoin hellotero-tilan nimeksi helloiina.

Muokkasin myös run.sh-tiedoston konffit vastaamaan omaa repoani.

Kopioin run.sh-tiedoston komennolla wget https://raw.githubusercontent.com/Miyune/sima/master/run.sh. Ajoin sen komennolla bash run.sh, jolloin kaikki ohjelmat asentuivat ja määrittelyt muuttuivat.
