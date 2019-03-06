# DEB-Package-Template

## Control files

### package/DEBIAN/control

- Package-Infos:
  - Package
  - Version
  - Maintainer
  - Architecture
  - Description

  

  ```
  Package: <package name>
  Version: 0.1
  Maintainer: <author name>
  Architecture: all
  Description: <description>
  ```

  

### package/DEBIAN/postinst

- Runable: 0755 or 0555 !
- Runs after the install
  - For example infos for the admin
  - Start tool or service, ...

## Setup files

### Other files in `package`

- will be copied to the target system!



### Pack deb: `create_deb.sh`

```
dpkg-deb --build <package dir>
```



### Install deb: `install_deb.sh`


```
sudo dpkg -i <package name>.deb
```



### Uninstall deb: `uninstall_deb.sh`


```
dpkg --remove <package name>
```

### Warning during uninstall is OK!

This message is ok as `/usr/local/bin` contains other binaries.

```
dpkg: Warnung: Während Entfernens von <package name> ist Verzeichnis »/usr/local/bin« nicht leer,
wird daher nicht gelöscht
```

