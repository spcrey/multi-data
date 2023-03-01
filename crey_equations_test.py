import json

with open("./data/equations.json","r") as file:
    eqn_str = file.read()
    eqn_dict = json.loads(eqn_str)

eqn_names = eqn_dict["eqn_names"]
eqn_strs = eqn_dict["eqn_strs"]

variable_values = {
    "nt": 2, "nx": 1, "nz": 1, 
    "P": 10000, "R": 1, 
}

for i in range(len(eqn_strs)):
    for key, value in variable_values.items():
        eqn_strs[i] = eqn_strs[i].replace(key, str(value))

print(eqn_names)

for eqn_str in eqn_strs:
    print(eqn_str)
