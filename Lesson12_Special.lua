--特殊用法

--多变量赋值
a, b, c = 1, 2, '12212'   --少写默认后面补空  多写后面默认省略
print(a, b, c)

a,b,c=1
print(a,b,c)

--多返回值 
function test()
    return 1,2,3   
    --多返回值时 你用几个变量接 就有几个值
    --如果少了 就少接几个 如果多了 就自动补空
end
a = test()

--and or
-- and or 他们不仅可以连接 boolean 任何东西都可以用来连接
--lua中 只用nil 和 false 才认为是假

--"短路"-对于and来说 有假则假 对于or来说 有真则真
--所以 他们只需要判断 第一个 是否满足 就会停止计算了
print(true and 1)   --1
print(false and 1)  --false
print(true or 1)    --true
print(false or 1)   --1

--三目运算符
x = 3
y = 2
local res = (x > y ) and x or y
print(res)
-- x > y
--true   
--(true and x)  -->x 
--x or y ----->x
--false
--(false and x)    --->false
--false or y  --->y