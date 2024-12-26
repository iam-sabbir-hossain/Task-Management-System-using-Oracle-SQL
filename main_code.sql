--CREATE USER C##Task_management IDENTIFIED BY pass123;
DROP USER C##Task_management;
CREATE USER C##Task_management IDENTIFIED BY pass123;
GRANT CONNECT, RESOURCE TO C##Task_management;
ALTER SESSION SET CURRENT_SCHEMA = C##Task_management;
ALTER USER C##Task_management QUOTA UNLIMITED ON USERS;
USE C##Task_management;
--Drop Options : 
DROP TABLE User_213400005;
DROP TABLE Task213400005;
DROP TABLE Category_213400005;
DROP TABLE Labels_213400005;
DROP TABLE Done_213400005;

CREATE TABLE User_213400005 (
    user_id NUMBER(6) PRIMARY KEY,
    user_name VARCHAR2(30) NOT NULL,
    email VARCHAR2(255),
    completed_task NUMBER(20) DEFAULT 0 
);
DESCRIBE User_213400005;
--Insertion in User_213400005
INSERT INTO User_213400005 (user_id, user_name, email) VALUES (1, 'Alice', 'alice@example.com');
SELECT * FROM User_213400005;

CREATE TABLE Task213400005 (
    task_number NUMBER(6) PRIMARY KEY,
    task_name VARCHAR2(30) NOT NULL,
    due_date DATE NOT NULL,
    priority_num NUMBER(6)
);
--DESCRIBE Task213400005;
-- Sample insertions into the Task213400005 table
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (1, 'Complete Project Proposal', '20-aug-2023',9);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (2, 'Read Chapter 3', '18-aug-2023',7);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (3, 'Buy Groceries', '16-aug-2023',4);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (4, 'Prepare Presentation', '25-aug-2023',16);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (5, 'Submit Report', '30-aug-2023',20);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (6, 'Call Client', '17-aug-2023',5);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (7, 'Send Invoices', '22-aug-2023',12);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (8, 'Write Blog Post', '28-aug-2023',);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (9, 'Attend Meeting', '19-aug-2023',8);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (10, 'Exercise', '21-aug-2023',10);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (11, 'Review Code', '23-aug-2023',14);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (12, 'Create Presentation Slides', '27-aug-2023',18);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (13, 'Clean House', '16-aug-2023',2);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (14, 'Study for Exam', '26-aug-2023',17);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (15, 'Call Mom', '15-aug-2023',1);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (16, 'Plan Vacation', '29-aug-2023',19);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (17, 'Submit Expense Report', '24-aug-2023',15);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (18, 'Fix Bug', '22-aug-2023',11);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (19, 'Read News', '16-aug-2023',3);
INSERT INTO Task213400005 (task_number, task_name, due_date, priority_num) VALUES (20, 'Write Thank You Cards', '18-aug-2023',6);
SELECT * FROM Task213400005;

CREATE TABLE Category_213400005 (
    Task_num NUMBER,
    Task_category VARCHAR2(30),
    FOREIGN KEY (Task_num) REFERENCES Task213400005(task_number) ON DELETE CASCADE
);
DESCRIBE Category_213400005;
--insertions into the Category_213400005 table
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (1, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (2, 'Study');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (3, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (4, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (5, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (6, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (7, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (8, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (9, 'Study');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (10, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (11, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (12, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (13, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (14, 'Study');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (15, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (16, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (17, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (18, 'Work');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (19, 'Personal');
INSERT INTO Category_213400005 (Task_num, Task_category) VALUES (20, 'Personal');
SELECT * FROM Category_213400005;

CREATE TABLE Labels_213400005(
    Task_num NUMBER,
    Task_label VARCHAR(30) NOT NULL,
    FOREIGN KEY (Task_num) REFERENCES Task213400005(task_number) ON DELETE CASCADE
)
DESCRIBE Labels_213400005;
-- Sample insertions into the Labels_213400005 table
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (1, 'Urgent');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (2, 'Important');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (3, 'Personal');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (4, 'Meeting');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (5, 'Project');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (6, 'Home');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (7, 'Study');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (8, 'Work');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (9, 'Deadline');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (10, 'Personal');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (11, 'Code');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (12, 'Finance');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (13, 'Cleaning');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (14, 'Study');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (15, 'Family');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (16, 'Presentation');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (17, 'Exam');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (18, 'Bug');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (19, 'News');
INSERT INTO Labels_213400005 (Task_num, Task_label) VALUES (20, 'Appreciation');
SELECT * FROM Labels_213400005;

CREATE TABLE Done_213400005 (
    client_id NUMBER(6),
    task_num NUMBER(6),
    FOREIGN KEY (client_id) REFERENCES User_213400005(user_id) ON DELETE CASCADE,
    FOREIGN KEY (Task_num) REFERENCES Task213400005(task_number) ON DELETE CASCADE
);
DESCRIBE Done_213400005;

-- Insertion in Done_213400005
INSERT INTO Done_213400005 (client_id, task_num) VALUES (1, 3);
INSERT INTO Done_213400005 (client_id, task_num) VALUES (2, 7);



DROP TRIGGER trg_213400005;
CREATE OR REPLACE TRIGGER trg_213400005
after insert or update of client_id on Done_213400005 for each row
declare
    total User_213400005.completed_task%type;
begin
    select completed_task into total from User_213400005 where user_id=:new.client_id;
    total:=total+1;
    update User_213400005 set completed_task=total where user_id=:new.client_id;
end;
 