import paramiko
import time

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
print "connecting"
ssh.connect('ec2-54-162-175-78.compute-1.amazonaws.com', 
             username='ubuntu', key_filename='''/home/sharique/Downloads/aws-pem/sharique.pem''')
print "connected"
print "executing command"
#sleep for 3 sec
time.sleep(3)

stdin, stdout, stderr = ssh.exec_command("ps -aux")
data = stdout.read().splitlines()
for line in data:
    print line
ssh.close()
