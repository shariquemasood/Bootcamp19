import json
import boto3
client = boto3.resource('ec2')

def lambda_handler(event, context):
    # TODO implement list files in s3 bucket
   instance_iterator = client.instances.filter(    Filters=[
        {
            'Name': 'instance-state-name',
            'Values': [
                'running',
            ]
        },
    ])
   for ec2 in instance_iterator:
       print ec2
