name = 'pkn'

Date=19       -- Expiry date
Month=7       -- Expiry month 
Year=2022     -- Expiry year
expiremessage="Your Script is Expired"  --Expiry message 
--This script will expire on 15/05/2020

--Do not change below code 
function check(t) 
if t<10 then t="0"..t end
return t
end
expiredate=Year.. check(Month).. check(Date)
date=gg.makeRequest("http://www.guimp.com").headers["Date" ][1]  --guimp.com is smallest webpage so takes less time for loading 
month={"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
for i=1,12 do
 if month[i]==string.sub(date,9, 11) then
      if i<10 then
       i="0"..i 
      end 
 currentdate=string.sub(date,13, 16)..i..string.sub(date,6, 7)  
 end
end
if tonumber(currentdate)>=tonumber(expiredate) then gg.alert(expiremessage) os.exit() end



gg.alert("its okay bruh")
