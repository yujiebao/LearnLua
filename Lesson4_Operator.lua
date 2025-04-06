print("*****************Operator*****************")
--  + - * / % ^
-- 没有自增 自减
-- 没有符合运算符 += -= *= /= %= ^=
-- 字符串  可以进行算术运算 会自动将字符串转换为number
print(51 + "215")
print(51 - "215")
print(51 * "215")
print(51 / "215")

--条件运算
--不等于 ~=
print(51 ~= "215")

--逻辑运算
-- or and not
--lua中也遵循逻辑短路原则
print(true or false)
print(false or true)
print(not true)
print(true and print("hello"))
print(false and print("hello"))

--位运算符号
--不支持位运算符需要自己实现

--三目运算符
--不支持