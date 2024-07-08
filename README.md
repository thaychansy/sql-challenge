<h1  align="center">SQL Challenge</h1>
<a name="readme-top"></a>


<!-- TABLE OF CONTENTS -->



Table of Contents
<ol>
<li><a href="#about-the-project">About The Project</a></li>
<li><a href="#built-with-quickdbd-and-postgre-sql-framework">Built With QuickDBD and PostgreSQL Framework</a></li>
<li><a href="#contributing">Contributing (UC Berkeley Bootcamp Students Only) </a></li>
<li><a href="#contact">Contact</a></li>
<li><a href="#acknowledgments">Acknowledgments</a></li>
</ol>


<!-- ABOUT THE PROJECT -->

## About The Project

### Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

### Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

### Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBD.

<img width="440" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/be6b295c-0e49-41ee-8d94-b87e1df0e6f3">

### Data Engineering

1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

    - Remember to specify the data types, primary keys, foreign keys, and other constraints.

   - or the primary keys, verify that the column is unique. Otherwise, create a composite, which takes two primary keys to uniquely identify a row.

   - Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

<img width="214" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/cfb78e0b-7010-4f4f-9688-c5e4ea670b86">


### Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.

![image](https://github.com/thaychansy/sql-challenge/assets/161902555/5be0a1ca-2a60-4eb5-a861-35bb30f2d1be)

2. List the first name, last name, and hire date for the employees who were hired in 1986.

![image](https://github.com/thaychansy/sql-challenge/assets/161902555/4fffb453-7d1d-4980-b199-d20298511c36)

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

![image](https://github.com/thaychansy/sql-challenge/assets/161902555/5394ea41-cf50-431b-8883-64fc70172a10)

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

<img width="380" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/ac44181c-70ce-47b7-ae08-33d310f4bfdf">

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

<img width="217" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/f287544d-acf6-4a96-b80a-82149d073604">

6. List each employee in the Sales department, including their employee number, last name, and first name.

<img width="293" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/3ec81fe9-daef-471f-af28-a46f39552bf1">

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img width="295" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/17f3f0a5-095a-43dd-a005-52f777028160">

9. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

<img width="194" alt="image" src="https://github.com/thaychansy/sql-challenge/assets/161902555/1d14ba3a-fd6f-4f59-b708-0570665f829a">

<p  align="right">(<a  href="#readme-top">back to top</a>)</p>
  
  
<!-- BUILT-WITH-QUICKDBD-AND-POSTGRE-SQL -->
## Built with QuickDBD and Postgre SQL Framework 

Built with QuickDBD and PostgreSQL Framework to leverage the functionality of the PostgreSQL database while using QuickDBD to generate an entity relationship diagram to simplify the development tasks. 

  
  <p  align="right">(<a  href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->

## Contributing 

(UC Berkeley Bootcamp Students Only)  

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

  

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

Don't forget to give the project a star! Thanks again!

  

1. Fork the Project

2. Create your Feature Branch (`git checkout -b new-branch-name`)

3. Commit your Changes (`git commit -m 'Add some message'`)

4. Push to the Branch (`git push origin new-branch-name`)

5. Create a pull request. 


Forking a repository and creating a pull request on GitHub is a great way to contribute to open-source projects. Here's a breakdown of the process:

1. Forking the Repository:

Find the repository you want to contribute to on GitHub.
Click on the "Fork" button in the top right corner. This creates a copy of the repository in your own account.

2. Clone the Forked Repository to Your Local Machine

You'll need Git installed on your system.
Use Git commands to clone your forked repository to your local machine. There will be instructions on the GitHub repository page for cloning.

3. Making Changes (Local Work):

Make your changes to the code in your local copy.
Use Git commands to track your changes (adding, committing).

4. Pushing Changes to Your Fork:

Once you're happy with your changes, use Git commands to push your local commits to your forked repository on GitHub.

5. Creating a Pull Request:

Go to your forked repository on GitHub.
Click the "Compare & pull request" button (might appear as a yellow banner).
Here, you'll see a comparison between your changes and the original repository.
Write a clear title and description for your pull request explaining the changes you made.
Click "Create Pull Request" to submit it for review.

<p  align="right">(<a  href="#readme-top">back to top</a>)</p>

  
  
  

<!-- LICENSE -->

## License

  

Distributed under  GNU General Public Licnese. See `LICENSE.txt` for more information.

  

<p  align="right">(<a  href="#readme-top">back to top</a>)</p>

  
  
  

<!-- CONTACT -->

## Contact

  

Thay Chansy - [@thaychansy](https://twitter.com/thaychansy) - or thay.chansy@gmail.com


Please visit my Portfolio Page: [thaychansy.github.io](https://thaychansy.github.io/)



Project Link: [thaychansy/sql-challenge](https://github.com/thaychansy/sql-challenge)
  

<p  align="right">(<a  href="#readme-top">back to top</a>)</p>

   
  

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

  

Here's a list of resources we found helpful and would like to give credit to. 

  
* [Chat GPT] [ChatGPT](https://chatgpt.com/)
* [Google Gemini] [Gemini Generative AI](https://gemini.google.com/app)
* [Stack Overflow] [Stack Overflow](https://stackoverflow.com/questions/77540558/in-postgressql-i-am-receiving-an-error-message-of-error-there-is-no-unique-con)

<p  align="right">(<a  href="#readme-top">back to top</a>)</p>

  
  
  

<!-- MARKDOWN LINKS & IMAGES -->

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge

[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge

[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
