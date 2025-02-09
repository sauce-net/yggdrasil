To install Resilio Sync (formerly known as BitTorrent Sync) on Ubuntu, you can follow these steps:

1. **Update Your System:**
   First, make sure your system is up to date:
   ```sh
   sudo apt update
   sudo apt upgrade
   ```

2. **Add the Resilio Sync Repository:**
   You need to add the Resilio Sync repository to your system. Run the following commands:
   ```sh
   wget https://linux-packages.resilio.com/resilio-sync/key.asc -O- | sudo apt-key add -
   echo "deb https://linux-packages.resilio.com/resilio-sync/deb resilio-sync main" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
   ```

3. **Install Resilio Sync:**
   Update your package list and install the Resilio Sync package:
   ```sh
   sudo apt update
   sudo apt install resilio-sync
   ```

4. **Configure Resilio Sync:**
   After installation, you need to configure the service. You can start the configuration wizard by running:
   ```sh
   sudo systemctl enable resilio-sync
   sudo systemctl start resilio-sync
   ```

5. **Verify the Installation:**
   You can check the status of the Resilio Sync service to ensure it is running correctly:
   ```sh
   sudo systemctl status resilio-sync
   ```

6. **Accessing the Web Interface:**
   By default, the Resilio Sync web interface is accessible at `http://<your-server-ip>:8888`. You can log in with the default credentials:
   - Username: `admin`
   - Password: `admin`

7. **Setting Up Authentication (Optional):**
   For security, you might want to set up authentication. You can do this by editing the configuration file and setting `authentication` to `true`.

That's it! You have successfully installed and configured Resilio Sync on your Ubuntu system.