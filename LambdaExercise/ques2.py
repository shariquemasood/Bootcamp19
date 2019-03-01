import json
import boto3
client = boto3.resource('s3')

def lambda_handler(event, context):
    # TODO implement list files in s3 bucket
    bucket_name = client.Bucket('sharique-bucket')
    for obj in bucket_name.objects.all():
        print obj.key
