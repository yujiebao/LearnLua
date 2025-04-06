--Table实现Dictionary
print("*****************Dictionary*****************")
--字典的声明
a = {["nihao"] = "nihao",["sdsad"] = "sdsad",[1] = 5,["ss"] = nil}
--访问字典
print(a.ssd)   --不存在的key会返回nil
print(a["nihao"])
print(a.nihao)   -- Dictionary.key 的方式得到值   key不能是number
print(a["sdsad"])
--修改值
a["sdsad"] = string.upper(a["sdsad"])
print(a["sdsad"])
--新增
a["nihao1"] = "nihao1"
print(a["nihao1"])
--删除
a["nihao1"] = nil
print(a["nihao1"])

--遍历  一定要用pairs
print("*****************Dictionary*****************")
for k,v in pairs(a) do
    print(k,v)   --print 可以传多个参数
end

--只遍历键
print("*****************Dictionary_key*****************")
for k in pairs(a) do
    print(k)   --print 可以传多个参数
end

--字典只遍历值 
--不可以

------------------------------------------
--类和结构体
--lua中没有面向对象,需要我们自己实现
--成员变量  成员函数。。。
Student = {
    name = "nihao",
    age = 18,
    sex = "man",
    up = function ()
        --这样写 age 和表中的age没有任何关系 它是一个全局变量
        -- print(age)
        --想要在表内部函数中 调用表本身的属性或者方法
        --一定要指定是谁的 所以要使用 表名·属性 或 表名·方法
        print(Student.age)
    end,
    --把自己作为参数 传递给函数
    show = function(self)    
        --不写self  和表中的age没有任何关系 它是一个全局变量
        print(self.name,self.age,self.sex)
    end
}
print(Student.age)
-- Student.show(Student)
Student:show()    --一种语法糖
--lua中.和:的区别
--冒号调用方法 会默认把调用者 作为第一个参数传入方法中   一种语法糖

--添加成员变量和函数
Student.a ='a'
Student.show2 = function(self)
print(self.name,self.age,self.sex,self.a)
end
function Student:show3()   --:不需要把self传进去  注意后面的self代表的是第一个参数，而不是this
print(self.name,self.age,self.sex,self.a)
end
Student:show2()

--表的公共操作
--表中提供的一些公共方法
t1 = {{age = 18,name = "nihao"} ,{age = 19,name = "nihao1"}}
t2 = {name = "xiaoli",sex = true}

--插入
print(#t1)   --两张表  {age = 18,name = "nihao"} {age = 19,name = "nihao1"}}
table.insert(t1,t2)
print(#t1)    --三张表  添加了t2表

--删除
table.remove(t1,1)   --删除第一张表   不传第二个参数默认删除最后一张表

t2 ={5,7,9,6,20,94,16}
--排序
table.sort(t2)   --默认是从小到大排序
for i,v in ipairs(t2) do
    print(i,v)
end
table.sort(t2,function(a,b)
    return a>b   --定义排序规则
end)
print("*********************")
for i,v in ipairs(t2) do
    print(i,v)
end

--拼接
arr = {"aa","bb","cc","dd"}
str = table.concat(arr,"-")
print(str)