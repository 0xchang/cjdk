## cjdk
---
A bat script for easy switching between Java versions


### How to use
---
#### Windos
```
git clone https://github.com/0xchang/cjdk.git
rem add env
cjdk 8
```
*After downloading, open the bat file with notepad and insert
Java_Root is set as the place where you install various versions
 of Java. Change the file name of Java to Java and version number,
 such as Java8. Then add the bat script to the environment variable
 and enter cjdk in CMD. You only need to answer which java version
 you want to use. For example,answer 8,and you will be changed to
 the environment variable of java8.*
#### Linux
```shell
git clone https://github.com/0xchang/cjdk.git
cd cjdk
sudo cp cjdk.sh /usr/bin/cjdk
sudo chmod +111 /usr/bin/cjdk
source cjdk 8
```

### Update
---
#### 2022-8-28
*Support accepting command line parameters, such as cjdk 8,
 so that your environment variable will become java8. If you
  want to run this script in other bat scripts, please use*

```CMD
rem windows
call cjdk 8
java --version
```
