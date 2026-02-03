import boto3

def list_ec2_instances(region="us-east-1"):
    ec2 = boto3.client("ec2", region_name=region)

    print(f"📦 Listing EC2 instances in {region}\n")

    response = ec2.describe_instances()

    for reservation in response["Reservations"]:
        for instance in reservation["Instances"]:
            instance_id = instance["InstanceId"]
            state = instance["State"]["Name"]
            print(f"- {instance_id}: {state}")

if __name__ == "__main__":
    list_ec2_instances()
