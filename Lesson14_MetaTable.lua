--元表
--元表的概念
-- 任何表变量都可以作为另一个表变量的元表
-- 任何表变量都可以有自己的元表(爸爸)
-- 当我们子表中进行一些特定操作时会执行元表中的内容

-- 设置元表
-- meta = {}
-- myTable = {}
-- --第一个参数:子表 第二个参数:元表(爸爸)
-- setmetatable(myTable,meta)

--特定操作
--__Tostring
meta = {
    __tostring = function (t)    --第一个参数:默认传入子表
        print("myTable")
        return t.name
    end
}
myTable = {
    name = "xiaozhang"
}
--第一个参数:子表 第二个参数:元表(爸爸)
setmetatable(myTable,meta)
print(myTable)

--__call
print("---------------------")
meta2 = {
    __call = function (t,a,b)
        --子表作为一个函数使用的时候会执行此函数
        print(t)    --第一个参数:默认传入子表(调用者自己)  此处相当于执行了一次__tostring  并打印了__tostring的返回值
        print("__call")
        return a+b
    end,
    __tostring = function (t)
        print("myTable")
        return t.name
    end
}
myTable2 = {
    name = "xiaozhang"
}
setmetatable(myTable2,meta2)
print(myTable2(1,2))   --必须实现了__call元方法 才能使用子表作为函数调用  否者报错

--运算符重载
print("---------------------")
meta3 ={
    __add= function (t1,t2)
        return t1.age + t2.age
    end ,
    __sub= function (t1,t2)
        return t1.age - t2.age
    end
}
mytable3 = {
    age = 18
}
setmetatable(mytable3,meta3)

mytable4 = {
    age = 19
}
print(mytable3 + mytable4)   --没有实现__add元方法 会报错
print(mytable3 - mytable4)   --没有实现__sub元方法 会报错

-- __mul  *
-- __div  /
-- __mod  %
-- __pow  ^
-- __concat  ..

--使用逻辑运算符时 需要两个子表都使用相同的元表  才能准确调用
-- __eq  ==
-- __lt  <
-- __le  <=

--__index和__newindex
-- __index:当我们访问一个表中不存在的属性时 会自动调用__index元方法 去__index指定的表中去找
--可以嵌套  查找时一层一层向上找
meta5_father = {
    name = "xiaozhang",
    age = 19,
}
meta5_father.__index = meta5_father  
meta5 = {
}
meta5.__index = meta5   --写在外部好一点，确保表中全部数据都能访问到(写在内部可能表没有加载完成)
myTable5 = {
 
}
setmetatable(meta5,meta5_father)  --嵌套元表 
setmetatable(myTable5,meta5)
print(myTable5.age)   

--__newindex:当赋值时，如果赋值一个不存在的索引  那么会把这个值赋值到newindex所指的表中 不会修改自己
--也支持嵌套
myTable6 = {}
meta6 = {} 
setmetatable(myTable6,meta6)
myTable6.age = 18  
print(myTable6.age)     --没有重定向  添加到mytable6中
meta6.__newindex = meta6    --重定向了赋值的表  
myTable6.name ="sss"
print(myTable6.name)   --设置了重定向 赋值到meta6中

--补充 不太重要
print(getmetatable(myTable5))   --获取元表
rawget(myTable5,"age")   --获取表中属性的值  不会触发元方法(不会去元表找(__index))
rawset(myTable5,"age",18)   --设置表中属性的值  不会触发元方法(不会去元表找(__newindex))