create table asset_info(
entry_id int(5) NOT NULL AUTO_INCREMENT,
ip_str char(200),
port char(5),
transport char(4),
product char(100),
version char(100),
server char(100),
PRIMARY KEY(entry_id)
);
create table cve_info(
cve_id int(5) NOT NULL AUTO_INCREMENT,
entry_id int(5),
cve char(100),
summary text,
PRIMARY KEY(cve_id),
FOREIGN KEY(entry_id) REFERENCES asset_info(entry_id)
);
create table cve_references(
reference_id int(5) NOT NULL AUTO_INCREMENT,
cve_id int(5),
reference char(100),
PRIMARY KEY(reference_id),
FOREIGN KEY(cve_id) REFERENCES cve_info(cve_id)
);


