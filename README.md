# SQL Challenge - Data Engineering and Analysis

## Background

This project involves working with six CSV files from the company's historical employee database. The goal was to perform data modeling, data engineering, and data analysis and answer the questions based on handling the data files. 

## Data Modeling

For the data modeling phase:

- I carefully inspected the provided CSV files.
- To visualize the database structure, I created an Entity Relationship Diagram (ERD). I used the [QuickDBD](https://www.quickdatabasediagrams.com/) tool for this purpose.

## Data Engineering

In the data engineering phase:

- I designed table schemas for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints.
- For tables without a unique primary key, I implemented composite keys, combining two columns to ensure uniqueness.
- I created the tables in the correct order to accommodate foreign keys.
- I successfully imported the data from each CSV file into its corresponding SQL table.

## Data Analysis

To analyze the data, I executed SQL queries to answer specific questions:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for employees hired in 1986.
3. List the manager of each department with department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with employee number, last name, first name, and department name.
5. List first name, last name, and sex of employees named Hercules with last names starting with 'B'.
6. List employees in the Sales department with their employee number, last name, and first name.
7. List employees in the Sales and Development departments with employee number, last name, first name, and department name.
8. List the frequency counts of employee last names in descending order.

## Conclusion

This project allowed me to gain hands-on experience in data modeling, data engineering, and data analysis using SQL. It was an exciting opportunity to work with real-world data and enhance my skills in managing and querying databases.
