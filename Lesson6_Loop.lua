--循环语句
print("*****************Loop*****************")

--while
print("while do ")
num = 0;
while num < 5  do   --执行条件 满足条件的执行
    print(num)
    num = num + 1
end

-- do  while
print("do while")
num = 0
repeat
    print(num)
    num = num + 1
until num > 5  --结束条件 不满足条件的执行

--for
print("for")
for i = 1, 5  do   --默认自增
    print(i)
end

--自增2
print("for Add 2")
for i =1, 5,2  do
print(i)
end

--自减1
print("for Sub 1")
for i =5, 1,-1  do
print(i)
end