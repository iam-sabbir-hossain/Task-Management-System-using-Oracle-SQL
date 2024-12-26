# Task Management System using Oracle SQL
# Overview
The Task Management System organizes tasks and users efficiently using Oracle SQL. It includes multiple database tables with relationships to store user details, task information, categories, labels, and completed tasks. A trigger automates updates for completed tasks.
# Features
User Management: Tracks users with user_id, user_name, email, and completed_task count.<br>
Task Management: Manages tasks with task_number, task_name, due_date, and priority_num.<br>
Task Categorization: Associates tasks with categories (e.g., Work, Study).<br>
Task Labeling: Assigns descriptive labels (e.g., Urgent, Personal).<br>
Completion Tracking: Logs completed tasks and updates the user’s task count via a trigger.<br>
Automation: Trigger automatically updates completed task count.<br>
# Key SQL Features
DDL & DML: Table creation, data insertion, and queries.<br>
Constraints: Ensures data integrity using PRIMARY KEY and FOREIGN KEY.<br>
Trigger: Updates user’s completed task count on task completion.<br>
Cascade Deletion: Automatically removes dependent records.<br>
# How to Use the Project
Set Up the Environment:<br>
-Create a database user and grant necessary privileges.<br>
-Set the current schema to the user for easier table management.<br>
Insert Data:<br>
-Populate the tables (User_213400005, Task213400005, Category_213400005, Labels_213400005, and Done_213400005) with sample data.<br>
Run Queries:<br>
-Retrieve and analyze tasks based on priority, category, or user.<br>
-Use SQL queries to track task progress or find overdue tasks.<br>
Mark Task Completion:<br>
-Insert records into the Done_213400005 table to mark tasks as completed. The trigger will automatically update the user's completed task count.<br>
Modify or Extend:<br>
-Add more categories, labels, or features to enhance functionality.<br>
