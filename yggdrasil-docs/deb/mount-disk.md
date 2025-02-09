To mount a drive in Ubuntu, follow these steps:

1. **Identify the Drive:**
   - Plug in your USB drive or connect an external hard drive.
   - Use the `lsblk` command to list all block devices and identify your drive:
     ```bash
     lsblk
     ```
   - Look for the device name of your drive (e.g., `sdb1`, `nvme0n1p1`).

2. **Create a Mount Point:**
   - Choose a directory where you want to mount your drive. You can create one if it doesn't already exist:
     ```bash
     sudo mkdir /mnt/mydrive
     ```

3. **Mount the Drive:**
   - Use the `mount` command to mount your drive at the specified directory. For example, if your drive is `/dev/sdb1`, you would use:
     ```bash
     sudo mount /dev/sdb1 /mnt/mydrive
     ```
   - You can also use the UUID (Universal Unique Identifier) of the drive to mount it. First, identify the UUID:
     ```bash
     sudo blkid /dev/sdb1
     ```
   - Then, use the UUID to mount the drive:
     ```bash
     sudo mount UUID=your-drive-uuid /mnt/mydrive
     ```

4. **Verify the Mount:**
   - Check if your drive is successfully mounted by listing the contents of the mount point:
     ```bash
     ls /mnt/mydrive
     ```

5. **Make the Mount Persistent (Optional):**
   - To make sure your drive is mounted at startup, you can add it to the `/etc/fstab` file. Edit this file with superuser privileges:
     ```bash
     sudo nano /etc/fstab
     ```
   - Add an entry for your drive if it doesn't already exist. For example:
     ```
     UUID=your-drive-uuid /mnt/mydrive ext4 defaults 0 2
     ```
   - Save and exit the editor.

6. **Unmount the Drive (Optional):**
   - When you're done using the drive, unmount it with:
     ```bash
     sudo umount /mnt/mydrive
     ```
   - Or, you can safely remove the drive using:
     ```bash
     sudo eject /dev/sdb1
     ```

By following these steps, you should be able to mount your drive in Ubuntu.