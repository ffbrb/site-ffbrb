## Stable Version - Brandenburg

site.conf für das Release v2018.1.x
Am Ende fallen dann alle Images für das target ar71xx-generic raus. Das sind die ichtigsten.
Für weitere Targets führe einfach folgendes nach dem Make aus:
## eigenes Image bauen z.B. für v2018.1.2
```
git clone https://github.com/freifunk-gluon/gluon.git gluon -b RELEASE
cd gluon
git clone https://github.com/freifunk-brandenburg/site-ffbrb.git 
cp -r site-ffbrb gluon/site
git clone https://github.com/freifunk-brandenburg/packages-ffbrb.git
cp -r packages-ffbrb/*-* gluon/package
cd gluon
make update
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH prepare image/$PROFILE
```
Wenn ein komplette Architektur gebaut werden soll, dann sieht der Befehl wie folgt aus.

```
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH
```
Bei ar71xx-gernic muss noch die REGION mit gegeben werden.

```
make GLUON_TARGET=$TARGET GLUON_BRANCHE=$BRANCH GLUON_REGION=eu
```

Die Variabeln müssen entsprechend ersetzt werden! Ein `make all` sollte nicht verwendet werden!

verfügbare `$TARGET` sind:
- ar71xx-generic <- TP-Link und Ubqiuiti <- diverse
- ar71xx-nand
- mpc85xx-generic
- x86-generic
- x86-kvm_guest
- ramips-mt7621 <- D-Link DIR860L/E
- brcm2708-bcm2709 <- Raspberry Pi 2
- brcm2708-bcm2708 <- Raspberry Pi 1

verfügbare `$BRANCH` sind:
- stable
- snapshot
- experimental

verfügbare `$PROFILE` findest du unter `gluon\target\$TARGET\profiles.mk`

in CHANGELOG.md liegen die Info's zu den Änderungen!
