drop table historic_data;
CREATE TABLE historic_data (
	date date,
	asset_total int(11),
	vuln_total int(11),
    port1 varchar(255),
    port2 varchar(255),
    port3 varchar(255),
    cve1 varchar(255),
    cve2 varchar(255),
    cve3 varchar(255),
    host1 varchar(255),
    host2 varchar(255),
    host3 varchar(255),
    primary key(date)
);
select * from historic_data;
select * from asset_info;
select * from cve_info;
select count(*) from cve_info where entry_id = 177;


# THIRD LARGEST CVE COUNT
select count(cve_id) as cveNum, entry_id from cve_info group by entry_id order by cveNum asc limit 1 offset 2;
# SECOND LARGEST CVE COUNT
select count(cve_id) as cveNum, entry_id from cve_info group by entry_id order by cveNum asc limit 1 offset 1;
# FIRST LARGEST CVE COUNT
select count(cve_id) as cveNum, entry_id from cve_info group by entry_id order by cveNum asc limit 1 offset 0;

# select ip string of THIRD most vulnerable machine
select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1 offset 2);
select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1 offset 1);
select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1 offset 0);


# port string that shows up the most THIRD
select port from asset_info group by port order by count(port) desc limit 1 offset 2; 
select port from asset_info group by port order by count(port) desc limit 1 offset 1; 
select port from asset_info group by port order by count(port) desc limit 1 offset 0; 


# cve string that shows up the most THIRD 
select cve from cve_info group by cve order by count(cve) desc limit 1 offset 2; 
select cve from cve_info group by cve order by count(cve) desc limit 1 offset 1;  
select cve from cve_info group by cve order by count(cve) desc limit 1 offset 0; 

select port from asset_info group by port order by count(port) desc limit 1 offset 0;
select port from asset_info group by port order by count(port) desc limit 1 offset 1;
select port from asset_info group by port order by count(port) desc limit 1 offset 2;

(select cve from cve_info group by cve order by count(cve) desc limit 0,1);
(select cve from cve_info group by cve order by count(cve) desc limit 1,1);
(select cve from cve_info group by cve order by count(cve) desc limit 2,1);
(select cve from cve_info group by cve order by count(cve) desc limit 1 offset 3);
(select cve from cve_info group by cve order by count(cve) desc limit 1 offset 4);
(select cve from cve_info group by cve order by count(cve) desc limit 1 offset 5);


select * from asset_info;


select port from asset_info group by port order by count(port) desc limit 1 offset 0;
SELECT port FROM asset_info group by port order by count(port) desc limit 0,1;
SELECT port FROM asset_info group by port order by count(port) desc limit 1,1;
SELECT port FROM asset_info group by port order by count(port) desc limit 2,1;
truncate historic_data;
truncate cve_info
select * from cve_info
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE asset_info; 
SET FOREIGN_KEY_CHECKS = 1;
select * from historic_data
INSERT into historic_data(date, asset_total, vuln_total, port1, port2, port3, cve1,  cve2, cve3, host1, host2, host3) values (CURDATE(), (SELECT COUNT(*) FROM asset_info), (SELECT COUNT(entry_id) from asset_info where entry_id in (SELECT entry_id from cve_info)), (select port from asset_info group by port order by count(port) desc limit 0,1),(select port from asset_info group by port order by count(port) desc limit 1,1),(select port from asset_info group by port order by count(port) desc limit 2,1),(select cve from cve_info group by cve order by count(cve) desc limit 0,1),(select cve from cve_info group by cve order by count(cve) desc limit 1,1),(select cve from cve_info group by cve order by count(cve) desc limit 2,1),(select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 0,1)),(select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 1,1)), (select ip_str from asset_info where entry_id = (select entry_id from cve_info group by entry_id order by count(cve_id) desc limit 2,1)));