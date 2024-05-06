[33mcommit 17a9370768710a1f5d6613a26827e15c6916a2cb[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: rahulprajap <rp70375@gmail.com>
Date:   Mon May 6 17:00:18 2024 +0530

    remove docker file

[1mdiff --git a/Jenkinsfile b/Jenkinsfile[m
[1mindex 3bc4dd2..7ae09e8 100644[m
[1m--- a/Jenkinsfile[m
[1m+++ b/Jenkinsfile[m
[36m@@ -1,28 +1,15 @@[m
 pipeline {[m
[31m-    agent {[m
[31m-           docker {[m
[31m-             image 'node:20.11.1-alpine3.19'[m
[31m-            arg:'-p 3000:3000' }[m
[31m-    }[m
[32m+[m[32m    agent any[m
     [m
     environment {[m
[31m-        PATH = "$PATH://home/rahul/.nvm/versions/node/v21.1.0/bin/"[m
[32m+[m[32m        PATH = "$PATH:/home/rahul/.nvm/versions/node/v21.1.0/bin"[m
     }[m
[32m+[m[41m    [m
     stages {[m
         stage('Build') {[m
             steps {[m
                 sh 'npm install'[m
[31m-                sh 'npm build'[m
[31m-                sh 'npm start'[m
             }[m
         }[m
[31m-[m
[31m-        // stage('Deliver') {[m
[31m-        //     steps {[m
[31m-        //         sh './jenkins/scripts/deliver.sh'[m
[31m-        //         input message: 'Finished using the web site? (Click "Proceed" to continue)'[m
[31m-        //         sh './jenkins/scripts/kill.sh'[m
[31m-        //     }[m
[31m-        // }[m
     }[m
[31m-}[m
\ No newline at end of file[m
[32m+[m[32m}[m
