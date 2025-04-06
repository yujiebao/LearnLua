--面向对象
--封装
--面向对象 类 其实都是基于 table来实现
--元表相关的知识点
Object = {}
Object.id = 1
function Object:new()
    --对象就是变量 返回一个新的变量
    --返回出去的内容 本质上就是表对象
    local obj = {}
    setmetatable(obj, self) --设置元表
    self.__index = self --设置原方法  子表没有的键去查找元表
    return obj;
end

function Object:Test()
    print(self.id)
end

local myobj = Object:new()
print(myobj) 
print('myobjId:'..myobj.id) 
myobj:Test()   --当前对象没有方法就去父类中查找  通过__index元方法来实现
myobj.id = 2   --相当于 对于子表中没有id的键 直接在子表中添加了一个新的id的键
print('myobjId:'..myobj.id)
print('ObjectId:'..Object.id) --父类的id没有改变
myobj:Test()   --当前对象没有方法就去父类中查找  又self代表第一个传入的参数 也就是子表  所以此处的self.id是2

--继承
--写一个用于继承的类
function Object:subClass(className)
    --G
    --创建一个新的表对象
    _G[className] = {}

    
    --写继承相关逻辑
    local obj = _G[className]
    --子类定义一个base属性 base代表父类
    obj.base = self
    setmetatable(obj, self)   --设置元表为self调用者(此例子为Object)--继承效果
    self.__index = self 
end
Object:subClass("Person")
local person = Person:new() --创建一个新的对象   Person的元表是Object调用Object的new方法
person.id = 3
print(person.id)
-- p = Person:new()
Object:subClass("Animal")
local animal = Animal:new() --创建一个新的对象   Person的元表是Object调用Object的new方法
print(animal.id)
-- p = Person:new()
-- print(p.id)
--G的使用
-- _G["a"] = 1
-- print()

--多态
--相同行为 不同表象 就是多态
--形同方法 不同执行逻辑 就是多态
Object:subClass("GameObject")
GameObject.Posx = 0;
GameObject.Posy = 0;
function GameObject:Move()
    self.Posx = 1 + self.Posx
    self.Posy = 1 + self.Posy
    print(self.Posx..","..self.Posy)
end

-- GameObject:Move() 

GameObject:subClass("Player")

function Player:Move()
    --base 指的是 Game0bject 表(类)
    --这种方式调用 相当于是把基类表 作为第一个参数传入了方法中
    --避免把基类表 传入到方法中 这样相当于就是公用一张表的属性了
    --我们如果要执行父类逻辑 我们不要直接使用冒号调用
    --要通过.调用 然后自己传入第一个参数
    self.base.Move(self) --调用父类的方法
end
Player:Move()

GameObject:subClass("Enemy")
function Enemy:Move()
    self.base.Move(self) 
end
Enemy:Move()
