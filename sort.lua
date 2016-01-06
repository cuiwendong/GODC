--[[
local table={{rate=1,star=4},{rate=1,star=3},{rate=3,star=1},{rate=3,star=4}}
for i=1,#table do
	print("rate="..table[i].rate.."  ".."star="..table[i].star)
end
print("----------")
function srotTable( t )
	for i=1,#t do
		for j=i+1,#t do
			if t[i].rate<t[j].rate then
				local tmp=t[i]
				t[i]=t[j]
				t[j]=tmp
			elseif t[i].rate==t[j].rate then
				if t[i].star>t[j].star then
					local tmp2=t[i]
					t[i]=t[j]
					t[j]=tmp2
				end
			end
		end
	end


srotTable(table)
for i=1,#table do
	print("rate="..table[i].rate.."  ".."star="..table[i].star)
end
--]]





s="1:2:3:4:5"
print(s)
t={}
function func( ss )
	local x =0
	for i=1,string.len(ss) do
		local m = string.sub(ss,i,i)
		if m~=":" then
			table.insert(t, tonumber(m))
		end
	end
end

func(s)
for i=1,#t do
	print(t[i])
end







