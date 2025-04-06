--多脚本执行
--全局变量和本地变量

--全局变量
a = 1
b = '123'
for i= 1, 3     do
        c  = 5
end
print(c)
function tt()
    a1 = 5
end
tt()
print(a1)   --
--本地变量  local
for i = 1, 3 do
    local d = 5
end
print(d)
function tt()
    local d1 = 5
end
tt()
-- print(d1)   访问不到

--多脚本执行
require("Lesson11_Test")
print(TestA)
-- print(TestLocalA)   --访问不到Local的数据

--脚本卸载
print("-----------------------------------------")
--如果是require已经加载执行的脚本 加载一次过后不会再被执行
-- require("Lesson11_Test")
print(package.loaded["Lesson11_Test"])
--卸载
package.loaded["Lesson11_Test"] = nil
local TestLocalA = print(package.loaded["Lesson11_Test"])
print(TestLocalA)

--大G表
-- G表是一个总表(table)他将我们申明的所有全局的变量都存储在其中    本地变量不会存储到G表
for key, value in pairs(_G) do
    print(key, value)
end
