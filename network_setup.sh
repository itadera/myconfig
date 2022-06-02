for device in $(nmcli device | awk '$2=="ethernet" {print $1}'); do
    echo "Restarting $device..."
    sudo systemctl restart wpa_supplicant@$device.service
done
sudo systemctl restart NetworkManager.service

