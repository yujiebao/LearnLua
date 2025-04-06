--垃圾回收
test = { id = 1}

--关键字collectgarbage
--获取当前lua占用的内存数 K字节
print(collectgarbage("count"))
print(collectgarbage("count"))

--进行垃圾回收
collectgarbage("collect")
print(collectgarbage("count"))
test = nil   --去除引用加速回收
collectgarbage("collect")
print(collectgarbage("count"))

--lua中有自动垃圾回收
--Unity中热更新开发 尽量不要去用自动垃圾回收   销毁性能  一般切场景时回收