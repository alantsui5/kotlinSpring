run: build execute rm

Os := os()

checker:
    #!/usr/bin/env python3
    import sys
    import os
    scriptpath = './'
    sys.path.append(os.path.abspath(scriptpath))
    import runner
    runner.set('{{Os}}')
    runner.install('java')
    runner.install('kotlin')
    runner.install('hub')
    
build:
    @kotlinc hello.kt -include-runtime -d hello.jar

execute:
    @java -jar hello.jar

rm:
    @rm -rf hello.jar

git-init:
    hub init
    echo "./gradle" > .gitignore
    echo "./vscode" >> .gitignore

git-init2:
    hub pull origin master

git-add:
    hub add .gitignore
    hub add *

git-push:
    hub push

git-clone:
    hub clone git@github.com:alantsui4/kotlinSpring.git ./
git-pull:
    hub pull git@github.com:alantsui4/kotlinSpring.git
#No Soltion for github auth currently
#Path: ~/.ssh/github_rsa
git-auth:
    ssh-keygen
    ssh-agent -s
    ssh-add ~/.ssh/github_rsa
