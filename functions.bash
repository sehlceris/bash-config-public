battery() {
    local full full_design
    full=$(cat /sys/class/power_supply/BAT0/energy_full)
    full_design=$(cat /sys/class/power_supply/BAT0/energy_full_design)
    echo "Battery health:  $(( full * 100 / full_design ))%"
    echo "Charge level:    $(cat /sys/class/power_supply/BAT0/capacity)%"
    echo "Status:          $(cat /sys/class/power_supply/BAT0/status)"
    echo "Power draw:      $(awk '{printf "%.2f W\n", $1/1000000}' /sys/class/power_supply/BAT0/power_now)"
    echo "Cycle count:     $(cat /sys/class/power_supply/BAT0/cycle_count)"
}

mem() {
    free -h
    grep -i committed /proc/meminfo
}