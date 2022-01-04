import glob

before = "function cliff_tuna:tag/system/ender_chest/21_runner"
after = "function cliff_tuna:tag/system/ender_chest/21_runner_mute"

functions = glob.glob("./**/*.mcfunction")

#print(functions)
for i in functions:
  #if before in i:
    with open(i,mode="r",encoding="utf-8") as f:
      print(i)
      text = f.read()
      text = text.replace(before,after)
    with open(i,mode="w",encoding="utf-8") as f:
      f.write(text)
