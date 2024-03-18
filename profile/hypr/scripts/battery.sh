#!/bin/sh

# Thresholds for battery percentage
LOW_BATTERY_THRESHOLD=20
HIGH_BATTERY_THRESHOLD=80

# Function to check battery level and send notifications
check_battery_level() {
    # Get battery percentage
    battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

    # Get charging status
    charging_status=$(acpi -b | grep -Eo "Discharging")

    # Check if battery level is below low threshold and not charging
    if [ "$battery_level" -lt "$LOW_BATTERY_THRESHOLD" ] && [ -n "$charging_status" ]; then
        send_notification "Low Battery" "Battery level is $battery_level%. Please plug in your charger." "critical"
    fi

    # Check if battery level is above high threshold and charging
    if [ "$battery_level" -gt "$HIGH_BATTERY_THRESHOLD" ] && [ -z "$charging_status" ]; then
        send_notification "High Battery" "Battery level is $battery_level%. You may unplug your charger." "low"
    fi
}

# Function to send notification
send_notification() {
    title="$1"
    message="$2"
    level="$3"
    notify-send "$title" "$message" --urgency "$level"
}

# Main function
main() {
    # Check battery level initially
    check_battery_level

    # Continuously monitor battery level every 5 minutes
    while true; do
        sleep 300  # 5 minutes
        check_battery_level
    done
}

# Run the main function
main
