#!/bin/zsh

ROTATION=$(cat /tmp/monitor-rotation)

if [[ $ROTATION == 0  ]]; then
	hyprctl keyword monitor $1,preferred,auto,1,transform,1
	hyprctl keyword input:tablet:transform 1
	hyprctl keyword input:touchdevice:transform 1
	echo 1 > /tmp/monitor-rotation
	echo $ROTATION
	exit
fi


if [[ $ROTATION == 1 ]]; then
	hyprctl keyword monitor $1,preferred,auto,1,transform,2
	hyprctl keyword input:tablet:transform 2
	hyprctl keyword input:touchdevice:transform 2
	echo 2 > /tmp/monitor-rotation
	echo $ROTATION
	exit
fi


if [[ $ROTATION == 2 ]]; then
	hyprctl keyword monitor $1,preferred,auto,1,transform,3
	hyprctl keyword input:tablet:transform 3
	hyprctl keyword input:touchdevice:transform 3
	echo 3 > /tmp/monitor-rotation
	echo $ROTATION
	exit
fi


if [[ $ROTATION == 3 ]]; then
	hyprctl keyword monitor $1,preferred,auto,1,transform,0
	hyprctl keyword input:tablet:transform 0
	hyprctl keyword input:touchdevice:transform 0
	echo 0 > /tmp/monitor-rotation
	echo $ROTATION
	exit
else
	hyprctl keyword monitor $1,preferred,auto,1,transform,1
	hyprctl keyword input:tablet:transform 1
	hyprctl keyword input:touchdevice:transform 1
	echo 1 > /tmp/monitor-rotation
	echo $ROTATION
	exit
fi
