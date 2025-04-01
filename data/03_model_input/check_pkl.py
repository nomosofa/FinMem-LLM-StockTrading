import pickle

with open('./subset_symbols_2_TSLA.pkl', 'rb') as f:
    data = pickle.load(f)

# 打印前几个键值对以检查数据
print("Loaded data keys:")
for i, key in enumerate(data.keys()):
    if i < 5:  # 只打印前5个键值对
        print(f"{key}: {data[key]}")
    else:
        break