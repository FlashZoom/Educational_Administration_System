import re

s = 'iowasdhqwio(abc)fweiohjiohf'
print(re.findall(r'[^()]+', s)[1])