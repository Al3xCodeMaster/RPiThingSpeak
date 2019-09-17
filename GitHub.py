import json
import requests
req = requests.get('https://api.github.com/users/Al3xCodeMaster/followers')
req.encoding     # returns 'utf-8'
req.status_code  # returns 200
data = json.loads((req.content).decode('utf8'))
print(len(data))
