print("******Variable******")
-- lua当中的简单变量类型
-- nil number string boolean
-- lua中所有的变量申明 都不需要申明变量类型 他会自动的判断类型
-- 类似C# 里面的 var
-- lua中的一个变量 可以随便赋值 -自动识别类型

-- 通过type函数 来得到变量的类型   type是string类型  type(type())  
-- print(c)  --未定义的c是nil   

print("******nil******")
a = nil;   --类似C# 的null
print(a)
print(type(a))

print("******number******")
a = 1;
print(a)
print(type(a))
a = 1.1;
print(a)
print(type(a))

--字符串的声明 使用单引号或者双引号包裹
--lua里 没有char
print("******string******")
a = "hello";
print(type(a))
print(a)
a = 'world'
print(type(a))
print(a)

print("******boolean******")    
a = true;
print(type(a))
print(a)


--复杂数据类型
--函数 function表 table
--数据结构 userdata
--协同程序 thread(线程)