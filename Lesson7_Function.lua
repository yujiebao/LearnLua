--函数
print("*****************Function*****************")
--无参数函数
-- function name(...) 
-- end

-- a = function ()
-- end

function F1(...)
    print("F1 function")
end
F1()   --声明后才能执行

F2 = function ()
    print("F2 function")
end
F2()

--有参数函数
function F3(a ,b)
    print(a)
    print(b)
    return a+b ,1,2,3;
    --多返回值时 在前面申明多个变量来接取即可
    --如果变量不够 不影响 值接取对应位置的返回值
    --如果变量多了 不应 直接赋ni1
end
c = F3(1,2)
print(c)
a,b,c ,d= F3(1,2)
print(a,b,c,d)
-- F3(1)
-- F3()  
--如果你传入的参数 和函数参数个数不匹配
--不会报错 只会补空ni1 或者 丢弃

--函数类型
F4 = function ()
    print("F4 function")
end

--函数重载
--不支持重载 默认调用最后一个声明的函数

--变长参数
function F5(...)
    print("F5 function")
    arr = {...}
    --变长参数先使用一个表存储 再使用
    for i= 1,#arr do
        print(arr[i])
    end
end

F5(1,2,3,4,5,6,7,8)

--函数嵌套
function F6()
    F7 =function ()
        print("F7 function")
    end
    return F7; 

    -- return function ()
    --     print("F6 in function")
    -- end
end

F7 = F6()
F7()


--闭包
function F8(x)
    print("F8 function")
    return function (y)
        print("F8 in function")
        print(x,y)
    end
end

F9 = F8(1)     --1 闭包  1在F9中使用 1作为F8的参数在F8执行结束时候没有释放  在F9中再次使用 改变了1的生命周期
F9(2)