# DEB-Package-Template

## Concrete Example:

### SHA3SUM

- [GitHub](https://github.com/user9209/deb-package-template/tree/sample/sha3sum)
- [Release](https://github.com/user9209/deb-package-template/releases/tag/sample1)



## Control files

### package/DEBIAN/control [[Link](https://www.debian.org/doc/manuals/maint-guide/dreq.de.html)]

- Package-Infos:
  - Package
  - Version
  - Maintainer
  - Architecture
    - any: dependent on the architecture
    - all: independent on the architecture
  - Description


```bash
Package: <package name>
Version: 0.1
Maintainer: <author name>
Architecture: all
Description: <description>
 <more description: single space at beginning is important!>
```

### More:

```bash
Homepage: https://...
Vcs-Git: https://...
Depends: git (>= 2.17.1),

# autodetect:
Depends: ${shlibs:Depends}, ${misc:Depends}
```



### package/DEBIAN/copyright [[Link](http://dep.debian.net/deps/dep5/)]

```bash
Files: *
Copyright: 2015-2019 G S
License: GPL-3+
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

```bash
dpkg-deb --build <package dir>
```



### Install deb: `install_deb.sh`


```bash
sudo dpkg -i <package name>.deb
```



### Uninstall deb: `uninstall_deb.sh`


```bash
sudo dpkg --remove <package name>
```

### Warning during uninstall is OK!

This message is ok as `/usr/local/bin` contains other binaries.

```
dpkg: Warnung: Während Entfernens von <package name> ist Verzeichnis »/usr/local/bin« nicht leer,
wird daher nicht gelöscht
```

