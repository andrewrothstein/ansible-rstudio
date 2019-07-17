#!/usr/bin/env sh
VER=1.2.1335
DIR=~/Downloads
MIRROR=https://download1.rstudio.org/desktop

dl()
{
    OS=$1
    URLARCH=$2
    ARCH=$3
    PKGTYPE=$4
    FILE=rstudio-${VER}-${ARCH}.${PKGTYPE}
    LFILENAME=rstudio-${VER}-${OS}-${ARCH}.${PKGTYPE}
    URL=$MIRROR/$OS/$URLARCH/$FILE
    LFILE=$DIR/$LFILENAME

    if [ ! -e $LFILE ];
    then
        wget -q -O $LFILE $URL
    fi

    printf "        # %s\n" $URL
    printf "        %s: md5:%s\n" $OS `md5sum $LFILE | awk '{print $1}'`
}

printf "  '%s':\n" $VER
echo "    amd64:"
echo "      deb:"
dl trusty amd64 amd64 deb
dl xenial amd64 amd64 deb
dl bionic amd64 amd64 deb
dl debian9 x86_64 amd64 deb
echo "    x86_64:"
echo "      rpm:"
dl centos7 x86_64 x86_64 rpm
dl opensuse x86_64 x86_64 rpm
dl opensuse15 x86_64 x86_64 rpm
