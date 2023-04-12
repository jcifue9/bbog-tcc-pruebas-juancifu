import boto3
import json
from datetime import datetime
import itertools
import subprocess
import os
import sys



print(sys.executable)
######## prueba aws cli
cmd="aws ec2 describe-instances --filters Name=instance-state-name,Values=stopped --query Reservations[].Instances[].InstanceId"

result = subprocess.run(cmd, shell=True, capture_output=True)

instances = json.loads(result.stdout.decode('utf-8'))

print(instances)

############pruebas boto3


client = boto3.client('ec2')
response = client.describe_instances(
    Filters=[
        {
            'Name': 'instance-state-name',
            'Values': [
                'stopped',
            ]
        },
    ],
    
    DryRun=False,
    MaxResults=10,
  
)
# instances = response['Reservations'][0]['Instances']
# instance_id = instances[0]['InstanceId']
# print(instances)


# # Iterar sobre todas las instancias
# for reservation in response['Reservations']:
#     for instance in reservation['Instances']:
#         # Obtener el ID de la instancia
#         instance_id = instance['InstanceId']
#         # Imprimir el ID de la instancia
#         print(instance_id)

for reservation in response['Reservations']:
    for instance in reservation['Instances']:
        instancias=(instance['InstanceId'])
        print(instancias)

# cmds="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query Reservations[].Instances[].InstanceId"

# results = subprocess.run(cmd, shell=True, capture_output=True)

# instancess = json.loads(results.stdout.decode('utf-8'))

# print("ejecutando"+instancess)

#client = boto3.client('ec2')

# response = client.get_instance_types_from_instance_requirements(
#     DryRun=False,
#     ArchitectureTypes=[
#         'x86_64'
#     ],
#     VirtualizationTypes=[
#         'hvm'
#     ],
#     InstanceRequirements={
#         'VCpuCount': {
#             'Min': 123
#         },
#         'MemoryMiB': {
#             'Min': 123
#         }
#     }
# )
# response = client.describe_instances(
#       Filters=[
#           {
#               'Name': 'tag:Name',
#             'Values': [
#                 'Windows-Docker',
#             ]
#           },
#       ],
#     #  InstanceIds=[
#     #      'i-0d6d7c165efc7bd22'
#     #  ],
#     DryRun=False,
    
# )
# d=datos_diccionario = json.dumps(response,default=str,indent=4,sort_keys=True)
# datos_diccionario=response
# #print(datos_diccionario)
# for entity in datos_diccionario["Reservations"]:
#      entityName = entity["Instances"]["InstanceId"]
     
     
#      print(entityName)
# print it
    #  print(plain_list_dict)
    #  print(type(plain_list_dict))
     
    #  for entityProperty in entityName["Instances"]:
    #       print(entityProperty)

#"InstanceId": "i-0e28759ad618f5724",

