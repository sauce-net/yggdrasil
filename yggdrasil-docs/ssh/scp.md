To send a file using `scp` (secure copy), you can use the following syntax depending on where you want to send the file:

1. **To a remote server:**
   ```sh
   scp /path/to/local/file username@remote_host:/path/to/destination
   ```

2. **From a remote server to your local machine:**
   ```sh
   scp username@remote_host:/path/to/source/file /path/to/local/destination
   ```

3. **To a remote server and save the file with a different name:**
   ```sh
   scp /path/to/local/file username@remote_host:/new/path/to/destination
   ```

### Examples:

4. **Sending a file to a remote server:**
   ```sh
   scp ~/Downloads/document.pdf user@remote-server:/home/user/Documents
   ```

5. **Receiving a file from a remote server:**
   ```sh
   scp user@remote-server:/home/user/document.pdf ~/Desktop
   ```

6. **Sending a file to a remote server with a different name:**
   ```sh
   scp ~/Downloads/document.pdf user@remote-server:/home/user/new_location/report.pdf
   ```

### Using SSH Key Authentication:
If you frequently use `scp` to connect to the same remote server, consider setting up SSH key-based authentication for easier access.

7. **Generating an SSH key:**
   ```sh
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

8. **Copying the key to the remote server:**
   ```sh
   ssh-copy-id user@remote-server
   ```

9. **Now you can use `scp` without specifying the username and password:**
   ```sh
   scp ~/Downloads/document.pdf remote-server:/home/user/Documents
   ```

### Additional Options:
You can also use `scp` with various options to control the behavior, such as mirroring the directory tree (`-r`), showing progress (`-v`), and more.

```sh
scp -r /path/to/local/directory user@remote_host:/path/to/destination
scp -v /path/to/local/file user@remote_host:/path/to/destination
```

For more details, you can refer to the `scp` [manual page](https://linux.die.net/man/1/scp).