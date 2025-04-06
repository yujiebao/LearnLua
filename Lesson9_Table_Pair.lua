--迭代器遍历
print("***************Table_Pair*******************")
--迭代器遍历 主要是用来遍历表的
--#得到长度 其实并不准确 一般不要用#来遍历表

a = {1,[-1] = 4,3,4,[5] = 5}
--ipairs遍历  
print("***************Table_ipairs*******************")
--ipairs遍历 还是 从1开始往后遍历的 小于等于0的值得不到
--只能找到连续索引的 键 如果中间断序了 它也无法遍历出后面的内容
for i, k in ipairs(a) do
    print(i,k)
end

-- pairs遍历
print("***************Table_pairs*******************")
-- 它能够把所有的键都找到 通过键可以得到值
for index, value in pairs(a) do
    print(index,value)
end
print()
for index in pairs(a) do
    print(index)    --只遍历键
end