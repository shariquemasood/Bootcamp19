import json
import boto3
import datetime

client = boto3.client('ec2', region_name='us-east-1')
now = datetime.datetime.now()

def ami_create():
    response_ec2 = client.describe_instances(Filters = [
           {
               'Name' : "tag-key",
               'Values' : ["Name"]
           },
           {
               'Name' : "tag-value",
               'Values' : ['sharique-es']
           }
       ])
    for reservations in response_ec2["Reservations"]:
        for instance in reservations["Instances"]:
            print instance["InstanceId"]
            instance_name = [f["Value"] for f in instance["Tags"] if f["Key"] == "Name"][0]
            print instance_name
            ami_name = instance_name + "_ami-" + datetime.datetime.now().strftime("%Y-%m-%d-%H-%M")
            ami_desc = "Ami for Instance " + instance_name
            response_image = client.create_image(InstanceId=instance["InstanceId"],Name=ami_name,NoReboot=False,
                                    Description=ami_desc
                                    )
            response_tags = client.create_tags(Resources=[response_image["ImageId"]],Tags=[
                {'Key': 'Name', 'Value': instance_name},
                ]
            )
            print response_tags
