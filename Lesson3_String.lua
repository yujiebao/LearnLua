print("*************String*************")

--获取字符串长度
a = "hello world"
print(#a)

--多行打印
print("nihao\n sdsad\n")

a = [[nihao
sdasdas
]]
print(a)

--字符串的拼接
print("nihao".."sdsad"..111)
print(string.format("I am %s",'xiaozhang'))

--别的字符转字符串
a = true
print(tostring(a))

--字符串提供的公共方法
a = "nihao"
print(string.upper(a))   
print(string.lower(a))
print(string.reverse(a))
print(a)  --不会改变原来字符串  返回一个新的字符串
print(string.find(a,'ih'))    --返回位置   Lua中下标起始位1不是0
print(string.sub(a,1,2))
print(string.gsub(a,'i','*'))    --替换字符串

--字符串转ASCLL
a = string.byte('Lua',1)
print(a)
--ASCLL转字符串
a = string.char(a)
print(a)