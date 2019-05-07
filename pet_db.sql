Create Table Clients(
	cid INT,
	cname VARCHAR(30),
	address VARCHAR(30),
	phone VARCHAR(10),
	PRIMARY KEY (cid) 
);

Create Table Accounts(
	cid INT,
	email VARCHAR(30),
	pword VARCHAR(16),
	PRIMARY KEY(email, cid),
	FOREIGN KEY(cid) REFERENCES Clients(cid)
		ON DELETE CASCADE);
        
Create Table Pets (
pid INT auto_increment, 
sid INT,
pname VARCHAR(20),
ptype VARCHAR(20),
age_weeks INT,
gender VARCHAR(10),
status VARCHAR(20),
coat VARCHAR(10),
picture VARCHAR(40),
breed VARCHAR(30),
date_posted DATE,
date_adopted DATE,
	PRIMARY KEY(pid),
	FOREIGN KEY(sid) REFERENCES Shelters(sid)
			ON DELETE CASCADE);


Create Table Shelters (
	sid INT,
	sname VARCHAR(30),
	address VARCHAR(50),
	phone CHAR(14),
		PRIMARY KEY(sid)
);

