--协同程序

--协程的创建
Func = function ()
    print("CorFunc")
end

cc = coroutine.create(Func)
print(cc)   --协程的本质是一个线程对象

cc2 = coroutine.wrap(Func)
print(cc2)  

--协程的运行
--第一种方式
coroutine.resume(cc)
--第二种方式
cc2()

--协程的挂起
Func2 = function ()
    local i = 1;
    while true do
        print("CorFunc2_"..i)
        i = i + 1
        --协程的挂起函数
        coroutine.yield(i)
    end
end

cc3 = coroutine.create(Func2)
isOk,tem =coroutine.resume(cc3)    --此方式的返回值第一个为协程是否执行成功，后面的自己定义的
print(isOk,tem)
isOk,tem = coroutine.resume(cc3)
print(isOk,tem)
isOk,tem =coroutine.resume(cc3)
print(isOk,tem)

cc4 = coroutine.wrap(Func2)
tmp = cc4()    --此方式的返回值第一个就是自己定义的
print(tmp)
tmp = cc4()
print(tmp)

--协程的状态
-- coroutine.status( )   -- 获取状态
-- suspended   dead  running(内部获取)
print(coroutine.status(cc3))

--这个函数可以得到当前正在 运行的协程的线程号   内部获取
-- coroutine.running()
