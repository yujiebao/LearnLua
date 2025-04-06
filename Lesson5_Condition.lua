--条件分支语句
print("****************Condition*****************")
a = 9
-- if   then   end   单分支
if a == 9 then
print("a is 9")    
end 

--if then else end  双分支
if a > 5 then
print("a is bigger than 5")    
else
print("a is smaller than 5")
end

--if then elseif else end  多分支
if a > 5 then
print("a is bigger than 5")    
elseif a < 5 then    --elseif不能分开写
print("a is smaller than 5")
else
print("a is equal to 5")
end

--lua中没有Switch语句