select first_name as workername from worker
select upper(first_name) as workername from worker
select department from worker group by department 
select distinct(department) from worker
select charindex('a',first_name) from worker where first_name='Amitabh'
select substring(first_name,1,3) from worker
select rtrim(first_name) from worker
select ltrim(department) from worker
select distinct(department),len(department) as dept_length from worker 
select replace(first_name,'a','A') as first_name from worker
select CONCAT(first_name,last_name) as full_name from worker
SELECT FIRST_NAME + ' ' + LAST_NAME AS COMPLETE_NAME
FROM Worker;
select * from worker order by first_name asc
select * from worker order by first_name asc,department desc
select * from worker where first_name in ('vipul','satish')
select * from worker where first_name not in ('vipul','satish')
select * from worker where department='admin'
select * from worker where first_name like '%a%'
select * from worker where first_name like '%a'
select * from worker where first_name like '%h' and len(first_name)=6
select * from worker  where salary between 100000 and 500000
select * from worker where joining_date >= '2014-02-01' and joining_date<='2014-02-28' 
select concat(first_name,last_name)as FullName, salary from worker where salary>=50000 and salary<=100000 
select department,count(*) as NoOfWorkers from worker group by department order by department desc
select * from worker where worker_id in(select worker_ref_id from title where worker_title='manager')
select  GETDATE();
select top 10 * from worker