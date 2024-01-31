#!/usr/bin/env bash
set -e
DIR=~/Downloads
MIRROR=https://download1.rstudio.org/electron

dl()
{
    local -r VER=$1
    local -r OS=$2
    local -r URLARCH=$3
    local -r ARCH=$4
    local -r PKGTYPE=$5
    local -r URL=$MIRROR/$OS/$URLARCH/rstudio-${VER}-${ARCH}.${PKGTYPE}
    local -r LFILE=$DIR/rstudio-${VER}-${OS}-${ARCH}.${PKGTYPE}

    if [ ! -e $LFILE ];
    then
        curl -sSLf -o $LFILE $URL
    fi

    printf "      # %s\n" $URL
    printf "      %s: md5:%s\n" $OS $(md5sum $LFILE | awk '{print $1}')
}

dl_ver() {
    VER=$1
    printf "  '%s':\n" $VER
    echo "    deb:"
    dl $VER focal amd64 amd64 deb
    dl $VER jammy amd64 amd64 deb
    echo "    rpm:"
    dl $VER centos7 x86_64 x86_64 rpm
    dl $VER opensuse15 x86_64 x86_64 rpm
    dl $VER rhel8 x86_64 x86_64 rpm
    dl $VER rhel9 x86_64 x86_64 rpm
}

dl_ver ${1:-"2023.12.1-402"}
