#!/bin/bash

mkdir -p ~/.irssi/scripts/autorun
cd ~/.irssi/scripts
cp -R ~/autodl-irssi/* ./
cp autodl-irssi.pl autorun/
mkdir -p ~/.autodl
touch ~/.autodl/autodl.cfg

irssi