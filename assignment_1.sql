DROP DATABASE IF EXISTS assignment_1;
CREATE DATABASE assignment_1;
USE assignment_1;

-- table 1
CREATE TABLE department (
	department_id	INT,
    department_name	VARCHAR(50)
);

-- table 2
CREATE TABLE position (
	position_id		INT,
    position_name	VARCHAR(50)
);

-- table 3
CREATE TABLE account (
    account_id 		INT,
	email			VARCHAR(50),
	username 		VARCHAR(50),
	full_name 		VARCHAR(50),
	department_id 	INT,
	position_id		INT,
	create_date 	DATE
);

-- table 4
CREATE TABLE `group`( -- chú ý nếu group ko bị nhầm với keyword
	group_id		INT,
    group_name		VARCHAR(50),
    creator_id		INT,
    create_date 	DATE
);

-- table 5
CREATE TABLE group_account ( 
	group_id		INT,
    account_id 		INT,
    join_date 		DATE
);

-- table 6
CREATE TABLE type_question ( 
	type_id		INT,
    type_name	VARCHAR(50)
);

-- table 7
CREATE TABLE category_question ( 
	category_id		INT,
    category_name	VARCHAR(50)
);

-- table 8
CREATE TABLE question ( 
	question_id		INT,
    content			VARCHAR(300),
    category_id		INT,
    type_id			INT,
    creator_id		INT,
    create_date 	DATE
);

-- table 9
CREATE TABLE answer ( 
	answer_id		INT,
    content			VARCHAR(300),
    question_id		INT,
    is_correct		BOOLEAN
);

-- table 10
CREATE TABLE exam ( 
	exam_id			INT,
    `code` 			INT,
    title			VARCHAR(100),
	category_id		INT,
    create_date 	DATE
);

-- table 11
CREATE TABLE exam_question ( 
	exam_id			INT,
    question_id		INT
);