#!/usr/bin/env bash

echo "${0}: ${1}"

case ${1} in
    2)
    echo "${0}: ${1} - Setup."
    # Initial set-up upon calling squeezelite.
    biinomute gpiochip4
    biinosetinp gpiochip4 0
    biinosetvol gpiochip3 63
    biinounmute gpiochip4
    ;;
    0)
    echo "${0}: ${1} - Switch off."
    # Amplifier off. Called on startup of squeezelite as well.
    biinomute gpiochip4
    ;;
    1)
    echo "${0}: ${1} - Switch on."
    # Amplifier on. Called on startup of squeezelite as well.
    biinounmute gpiochip4
    ;;
esac
