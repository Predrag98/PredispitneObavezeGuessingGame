#!/usr/bin/env bash
echo "Dobrodošli u igru pogađanja"
echo "Pogađajte broj fajlova u ovom direktorijumu"
function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Unesite vašu predpostavku"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Ima više  fajlova"
        elif [ $number -gt $true_ans ]
        then
            echo "Ima manje fajlova"
        else
            echo "Čestitamo pogodili ste tačan broj"
        break;
        fi
    done
}
guess
