function disable_laptop_keeb
    xinput list | grep -i 'at translated set 2 keyboard' | cut -d'=' -f2 | cut -d\t -f1 | xargs xinput float
end
