#!/bin/bash
for loginid in akshay amol animesh satheesh arjun harkirat jitendra tushar rajthilak rijin sandeep vishal
do
    echo "sudo useradd $loginid"
    sudo useradd $loginid
    echo "sudo cp -R .ssh /home/$loginid"
    sudo cp -R .ssh /home/$loginid
    echo "sudo chown -R $loginid:$loginid /home/$loginid/.ssh"
    sudo chown -R $loginid:$loginid /home/$loginid/.ssh
    echo "sudo -u hdfs hadoop fs -mkdir /user/$loginid"
    sudo -u hdfs hadoop fs -mkdir /user/$loginid
    echo "sudo -u hdfs hadoop fs -chown -R $loginid /user/$loginid"
    sudo -u hdfs hadoop fs -chown -R $loginid /user/$loginid
done