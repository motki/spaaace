#!/usr/bin/env bash
set -eo pipefail
mkdir build || rm -rf build/*
git clone https://github.com/motki/core build/motki
zip -9jo build/motki-schema.zip build/motki/resources/ddl/*
# download latest evesde-postgres.dump.bz2 from https://www.fuzzwork.co.uk/dump/
# download latest Types.zip and Icons.zip from https://developers.eveonline.com/resource/resources
echo "motki_ddl_zip=https://motki-static.nyc3.digitaloceanspaces.com/evesde/motki-schema.zip
types_zip=https://motki-static.nyc3.digitaloceanspaces.com/evesde/2018/March2018Release_1.0_Types.zip
icons_zip=https://motki-static.nyc3.digitaloceanspaces.com/evesde/2018/March2018Release_1.0_Icons.zip
evesde_bz2=https://motki-static.nyc3.digitaloceanspaces.com/evesde/2018/postgres-schema-2018-05-09.dmp.bz2" > build/current

