To change the ownership of a file in Linux, you can use the `chown` command. The syntax is as follows:

```sh
sudo chown new_owner filename
```

or, if you want to change both the owner and the group:

```sh
sudo chown new_owner:new_group filename
```

Here are some examples:

1. Change the owner of a file named `examplefile` to `john`:

```sh
sudo chown john examplefile
```

2. Change both the owner and the group of a file named `examplefile` to `john:developers`:

```sh
sudo chown john:developers examplefile
```

To make the change effective for all files in a directory (and its subdirectories), you can use the `-R` option:

```sh
sudo chown -R new_owner directoryname
```

or both the owner and the group:

```sh
sudo chown -R new_owner:new_group directoryname
```

For example, to recursively change the ownership of all files and subdirectories in `project` to `john:developers`, you would run:

```sh
sudo chown -R john:developers project/
```

Remember to use `sudo` when you don't have the necessary permissions to change ownership.