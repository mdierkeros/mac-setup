#!/bin/bash

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update brew
brew update

# Install brew packages
PACKAGES=(
    ack
    aom
    bat
    bdw-gc
    c-ares
    cairo
    dav1d
    docker
    docker-compose
    docker-machine
    ffmpeg
    flac
    fontconfig
    fortune
    fping
    freetype
    frei0r
    fribidi
    fx
    gdbm
    gettext
    gh
    ghostscript
    giflib
    glib
    glow
    gmp
    gnutls
    gobject-introspection
    graphite2
    guile
    harfbuzz
    icu4c
    iperf
    jansson
    jbig2enc
    jemalloc
    jpeg
    lame
    leptonica
    libass
    libbluray
    libev
    libevent
    libffi
    libidn2
    libogg
    libpng
    libsamplerate
    libsndfile
    libsodium
    libsoxr
    libtasn1
    libtiff
    libtool
    libunistring
    libvidstab
    libvorbis
    libvpx
    libyaml
    little-cms2
    lzo
    mdcat
    mysql-client
    ncurses
    nettle
    nghttp2
    node
    ocrmypdf
    opencore-amr
    openjpeg
    openssl@1.1
    opus
    p11-kit
    pandoc
    pcre
    pixman
    pkg-config
    pngquant
    pybind11
    python@3.8
    python@3.9
    qpdf
    rav1e
    readline
    rtmpdump
    rubberband
    sdl2
    snappy
    speex
    sqlite
    srt
    tcl-tk
    tesseract
    tesseract-lang
    theora
    tig
    tmux
    tree
    unbound
    unpaper
    unrar
    utf8proc
    watch
    webp
    wget
    x264
    x265
    xvid
    xz
    youtube-dl
    zeromq
    zimg
    alfred
    blender
    brave-browser
    cyberduck
    docker
    fs-uae
    geekbench
    gfxcardstatus
    imageoptim
    keycastr
    libreoffice
    mediathekview
    meld
    microsoft-teams
    mysqlworkbench
    obs
    obs-virtualcam
    runjs
    skype
    steam
    virtualbox
    vlc
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup
