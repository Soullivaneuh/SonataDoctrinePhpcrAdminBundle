#!/usr/bin/env sh
set -ev

if [ "${TRAVIS_PHP_VERSION}" != "hhvm" ]; then
    PHP_INI_DIR="$HOME/.phpenv/versions/$(phpenv version-name)/etc/conf.d/"
    TRAVIS_INI_FILE="$PHP_INI_DIR/travis.ini"
    echo "memory_limit=3072M" >> "$TRAVIS_INI_FILE"

    
    fi

sed --in-place "s/\"dev-master\":/\"dev-${TRAVIS_COMMIT}\":/" composer.json

if [ "$SYMFONY" != "" ]; then composer require "symfony/symfony:$SYMFONY" --no-update; fi;
if [ "$SONATA_ADMIN" != "" ]; then composer require "sonata-project/admin-bundle:$SONATA_ADMIN" --no-update; fi;
if [ "$SONATA_BLOCK" != "" ]; then composer require "sonata-project/block-bundle:$SONATA_BLOCK" --no-update; fi;
