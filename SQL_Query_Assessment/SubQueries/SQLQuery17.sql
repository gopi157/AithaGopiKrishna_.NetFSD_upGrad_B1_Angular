
create function CountAccountByType(@acctype varchar(20))
returns int
as
begin
declare @count int
select @count=count(*) from Accounts where
AccountType=@acctype
return @count
end
select dbo.CountAccountByType('current') as Accounts

create function GetAccountOpenDate(@accId int)
returns date
as
begin
declare @openDate Date
select @openDate=OpenDate from Accounts 
where AccountId=@accId
return @OpenDate
end
select dbo.GetAccountOpenDate(10003) as AccountOpenDate
