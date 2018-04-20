# warning: setlocale: LC_CTYPE: cannot change locale (UTF-8)
> setlocale: LC_CTYPE


## commands:
```shell
vim /etc/environment

# add these lines...

LANG=en_US.utf-8
LC_ALL=en_US.utf-8
```


## other solution:
```conf
Fixed it by adding these lines to ~/.bash_profile on my local machine (OSX).

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## resouces:
+ https://askubuntu.com/questions/412495/setlocale-lc-ctype-cannot-change-locale-utf-8
+ https://www.jianshu.com/p/2b24861be987