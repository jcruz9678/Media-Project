CREATE Table Type (
        Id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Movie longblob not null,
        Tv_Show longblob not null,
        Pictures longblob not null,
	document longblob not null,
        User_Define_Media_Id int UNSIGNED  null,
		
		FOREIGN KEY (User_Define_Media_Id)
		 REFERENCES user_Deifne_Media(Id)

    );
	
CREATE TABLE USER
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	firstName varchar(50),
	lastName varchar(50),
	email varchar(100),
	emailConfirmation varchar(100),
	password varchar(30),
	PRIMARY KEY (id)
);
	
	
	
CREATE Table userLoginData.user_Deifne_Media (
        Id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
		MediaType nvarchar(200) null 
		
		);
		
		
CREATE Table mediaObject
	 (
        Id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
		type_Id int UNSIGNED not null,
		Name varchar(100) null,
		Described varchar(150) null,
		File_Path varchar(2000)null,
		User_ID INT UNSIGNED not null,
		
		FOREIGN KEY (User_ID)
		REFERENCES mediatable.user(id),
		
		FOREIGN KEY (type_Id)
		REFERENCES type(Id)
		);
		
CREATE TABLE USER_HISTORY
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	userId INT UNSIGNED NOT NULL REFERENCES USER(id),
	firstName varchar(50),
	lastName varchar(50),
	email varchar(100),
	emailConfirmation varchar(100),
	password varchar(30),
	PRIMARY KEY (id)
);
