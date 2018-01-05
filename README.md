# oracle_support_upload
A bash shell script to upload large files directly from a host to Oracle Support SR's.

### Prerequistes
1.  Install the curl package, if not already there
```
which curl
```

Oracle Linux:
```
yum install curl
```

Solaris 11:
```
pkg install curl
```

### Usage
1.  Copy the script to your preferred location (ex: ~/bin/)
2.  Run the script
```
./oracle_support_upload.sh your_oracle_MOS_account@domain.com reallybigfile.tar.gz 3-12345678901
```
