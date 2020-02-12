#!/bin/bash
sudo modprobe snd_soc_simple_amplifier
sudo modprobe snd_soc_simple_card_utils
amixer -c 0 set 'AIF1 Slot 0 Digital DAC' unmute
amixer -c 0 set 'Line Out' unmute
amixer sset 'Line Out' 100%
sudo /usr/share/ofono/scripts/enable-modem
sudo /usr/share/ofono/scripts/online-modem
