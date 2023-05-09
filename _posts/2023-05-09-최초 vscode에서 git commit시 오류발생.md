---
title:  show error visual code, git commit click,Make sure you configure your user.name and user.email in git
author: naksupapa
date: 2023-05-09 00:00:00 +0900
categories: [github]
tags: [chatgpt, github, vscode]
mermaid: true
---

"Make sure you configure your "user.name" and "user.email" in git" 오류는 Git에서 커밋 작업을 수행할 때 해당 작업의 작성자를 식별할 수 없어서 발생하는 오류입니다. 이 오류를 해결하려면 다음과 같은 단계를 따르면 됩니다.

1. Git에 사용자 정보 구성하기: Git에서는 각 커밋 작업의 작성자를 식별하기 위해 사용자 정보를 설정해야 합니다. 이를 위해서는 다음 명령어를 실행합니다.

```arduino
$ git config --global user.name "Your Name"
$ git config --global user.email "youremail@domain.com"
```

이 명령어를 실행할 때 "Your Name"에는 본인의 이름을, "youremail@domain.com"에는 본인의 이메일 주소를 입력하면 됩니다. 이렇게 설정한 사용자 정보는 Git에서 모든 저장소에서 사용됩니다.

2. 변경 내용 커밋하기: 사용자 정보를 설정한 후에는 변경 내용을 커밋할 수 있습니다. 이를 위해 다음 명령어를 실행합니다.

```ruby
$ git commit -m "Commit message"
```

이 명령어를 실행할 때 "Commit message"에는 커밋 작업에 대한 간단한 설명을 입력합니다. 이제 Git commit 버튼을 누르면 해당 오류가 발생하지 않을 것입니다.

위와 같이 설정해도 계속해서 동일한 오류가 발생할 경우, Visual Studio Code에서 Git 설정이 올바르게 구성되었는지 확인하십시오. Git 구성 파일이 올바르게 구성되었는지 확인하려면 Visual Studio Code에서 Ctrl+Shift+P를 누르고 "Open User Settings"를 입력하여 사용자 설정 파일을 엽니다. "git.path"가 올바르게 구성되어 있는지 확인하고 필요한 경우 수정하십시오.

> 실습
```
git config --global user.name "naksupapa"
git config --global user.email "rs1017@naver.com"
git commit -m "mysql"
```
> output
```
[main ce135a3] mysql
 2 files changed, 18 insertions(+), 6 deletions(-)
 create mode 100644 "_posts/2023-05-09-mysql \354\227\220\354\204\234 use admin \354\235\204 \354\213\244\355\226\211 \355\225\230\353\251\264 \354\231\234 \355\201\254\353\236\230\354\213\234\352\260\200 \353\260\234\354\203\235 \355\225\230\353\202\230\354\232\224.md"
 ```

test

![img](..\assets\img\posts\2023-05-09-17-27-22.png)