--自带库
--时间相关
--系统时间
print(os.time())
--自己传入参数得到时间
print(os.time({year=2018,month=12,day=12,hour=12,min=12,sec=12}))

--os.date("t")
local nowTime = os.date("*t")
print(nowTime)
for key, value in pairs(nowTime) do
    print(key,value)
end
print(nowTime.day)

--数学运算
print(math.abs(-1))
print(math.deg(math.pi))
print(math.cos(math.pi))
print(math.floor(2.6))   --上取整
print(math.ceil(2.6))     --下取整
print(math.max(1,2,3,4,5))
print(math.min(1,2,3,4,5))
print(math.modf(1.2))   --小数截取  返回两个参数
--随机数
--先设置随机种子
math.randomseed(os.time())
print(math.random(1,100))
--开方
print(math.sqrt(16))

--路径相关
--lua脚本加载路径
print(package.path)
package.path = package.path .. ";./?.lua"
