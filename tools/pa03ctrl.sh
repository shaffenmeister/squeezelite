#!/usr/bin/env bash

echo "${0}: ${1}"

case ${1} in
    2)
    biinomute gpiochip4
    biinosetinp gpiochip4 0
    biinosetvol gpiochip3 63
    biinounmute gpiochip4
    ;;
    0)
    biinomute gpiochip4
    ;;
    1)
    biinounmute gpiochip4
    ;;
esac
