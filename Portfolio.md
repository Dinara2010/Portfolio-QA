# Portfolio

- [About me](#about-me)
- [Skills](#skills)
- [Tools](#tools)
- [Examples of my work](#examples-of-my-work)
  * [Test data (Design Techniques)](#test-data-design-techniques)
  * [Test cases](#test-cases)
  * [Bug reports in Jira](#bug-reports-in-jira)
  * [My SQL Workbench](#mysql-workbench)
- [Follow me](#follow-me)
## About me
I am a Manual QA engineer (junior+).

 In my work I use different types of testing: functional (Smoke Testing, Sanity Testing, Regression Testing, Critical path, Exploratory Testing) and non-functional testing (Usability Testing). I spend most of my time working on functional testing on crowdfunding platforms (Test IO, Utest).

My previous experience consists of 2 areas, which help me in the work of testers:
* I know how to build a process and go all the way from requirements gathering to the finished product (as a former Process Development Leader).
* I can use my vision and analytical skills as a UX/UI designer to test software and create real user test cases.

## Skills
You can find examples of the described skills in the [Examples of my work](#examples-of-my-work) section.

__Test analysis & design__
 * I can apply Equivalent Class Partitioning, Boundary Value Analysis, and Pairwise Testing to create inputs for tests.
 * I have experience with functional (Smoke Testing, Sanity Testing, Regression Testing, Critical path, Exploratory Testing) and non-functional testing (Usability Testing).
 * Work based on black/grey box methodology.

__Test documentation__
 * I have the skills to create test cases and checklists and how and in what situations to use them productively.
 * I can write a comprehensive error report so that every person's way is how it can be reproduced.

__Manual testing__
  * I have practical experience testing applications on crowdfunding platforms (Test IO, Utest) and can perform manual functional and usability testing of web applications.
  * Understanding of software testing methodologies for Web applications


## Tools

![Header](https://img.shields.io/badge/Jira-0E1116?style=for-the-badge&logo=jira&logoColor=136be1)
![Header](https://img.shields.io/badge/Postman-0E1116?style=for-the-badge&logo=postman&logoColor=f76935)
![Header](https://img.shields.io/badge/MySQL-0E1116?style=for-the-badge&logo=mysql&logoColor=FFFFFF)
![Header](https://img.shields.io/badge/Visual_Studio-0E1116?style=for-the-badge&logo=visualstudiocode&logoColor=136be1)
![Header](https://img.shields.io/badge/Github-0E1116?style=for-the-badge&logo=github&logoColor=FFFFFF)
![Header](https://img.shields.io/badge/Figma-0E1116?style=for-the-badge&logo=figma&logoColor=7d5fa6)
![Header](https://img.shields.io/badge/DevTools-0E1116?style=for-the-badge&logo=googlechrome&logoColor=FFFFFF)
![Header](https://img.shields.io/badge/Trello-0E1116?style=for-the-badge&logo=trello&logoColor=2674f2)


# Examples of my work

Here are several examples of frontend test cases designed using different testing design techniques while testing the sample [personal diet site](https://www.eatthismuch.com/).

## Test data (Design Techniques)
The test data to be used in the test cases were prepared by me using 3 test design techniques (Equivalent Class Partitioning, Boundary Value Analysis, Pairwise Testing).

Check the Google documents:
-  [Female](https://drive.google.com/file/d/1wMfhbf2fLVNFYq8Vjp_TgNhAUtxP5FmG/view?usp=sharing) 
- [Male](https://drive.google.com/file/d/1bcHzI1uSq9aQijO96DvS23_JLQG8MtZj/view?usp=sharing)

## Test cases
<details><summary> Positive test case</summary>

   ### Preconditions
   Not required

   ### Execution
   
   **1)** Go to https://www.eatthismuch.com/
   Expected result: A page with a form for creating a personal diet is opened
   
   **2)** Clear the website cache in Devtools console and refresh the page.
   Expected result: cache is cleared. 
   
   **3)** Select the "Vegan" diet type.
   Expected result: The "Vegan" diet type was selected.
   
   **4)** In the "I want to eat" input any value between 1,500 and 5,000 calories. 
   Expected result: The number of calories was entered in the range of 1500 to 5000 calories.

   **5)** In the "In" field, select any number of dishes from 1 to 9 from the drop-down list. 
   Expected result: The number of meals has been selected.
   
   **6)** Hit the "Generate" button.
   Expected result: 
   - The page "Today's meal plan" opens
   - The number of calories in the meals was calculated in accordance with the chosen amount in step 4 (a difference of + - 100 calories is acceptable).
   - The number of meals was shown based on the chosen quantity in step 5.
   - All meals in the list match the selected diet type and don't include meals from other categories.

</details>

<details><summary> Negative test case (Selected an incorrect calorie count)</summary> 

   ### Preconditions
   Not required

   ### Execution
   
   **1)** Go to https://www.eatthismuch.com/ 
   Expected result: A page with a form for creating a personal diet is opened.

   **2)** Clear the website cache in Devtools console and refresh the page. 
   Expected result: cache is cleared.
   
   **3)** Select the "Paleo" diet type.
   Expected result: The "Paleo" diet type was selected.

   **4)** In the "I want to eat" input 0 calories. 
   Expected result: The number of calories was 0.

   **5)** In the "In" field, select 3 meals from the drop-down list. Expected result: The number of meals has been selected. 
   
   **6)** Hit the "Generate" button.
   Expected result:  
   - The error "For 3 meals, please enter between 300 and 12000 calories" was indicated.
   - The "I want to eat" margin has a red frame.
</details>

<details><summary> Positive test case (Additionally using a calculator)</summary> 

   ### Preconditions
   The test data for [females](https://drive.google.com/file/d/1wMfhbf2fLVNFYq8Vjp_TgNhAUtxP5FmG/view?usp=sharing) and for [males](https://drive.google.com/file/d/1bcHzI1uSq9aQijO96DvS23_JLQG8MtZj/view?usp=sharing) must be downloaded.

   ### Execution

   **1)** Go to https://www.eatthismuch.com/ 
   Expected result: A page with a form for creating a personal diet is opened.

   **2)**  Clear the website cache in Devtools console and refresh the page. 
   Expected result: cache is cleared.  
   
   **3)** Hit the "Not sure" button. 
   Expected result: A "Nutrition calculator" pop-up window appears with a form to fill out. 
   
   **4)** Choose "Maintain" in the "I want to" section.

   **5)** Choose "Metric" in the "Preferred units" section.

   **6)** Choose "Female" in the "I am" section.

   **7)** Enter any value from 160 to 179 in the "Height" box.

   **8)** Enter any value from 70 to 550 in the "Weight" box.

   **9)** Enter any value from 22 to 100 in the "Age" box.

   **10)** Choose "Medium" in the "Body fat" section.

   **11)** Choose "Sedentary" in the "Activity level" section.

   **12)** Choose "No thanks" in the "Set a weight goal" section.

   Expected result: All parameters in steps 4 to 12 were selected according to the specified values.
   
   **13)** Hit the "Calculate" button.
   Expected result: calculation of "Suggested Calories" appeared.
   
   **14)** Hit the "Apply these settings" button.
   Expected result: 
   - Return to the main page
   - The calories in the "I want to eat" field are the same as in step 13.
   
   **15)** In the "In" field, select 4 meals from the drop-down list.Expected result: The number of meals has been selected.
   
   **16)**  Hit the "Generate" button. 
   Expected result: 
   - The page "Today's meal plan" opens
   - The number of calories in the meals was calculated in accordance with the chosen amount in step 15 (a difference of + - 100 calories is acceptable). 
   - The number of meals was shown based on the chosen quantity in step 13.
   - All meals in the list match the selected diet type and don't include meals from other categories.

</details>



## Bug reports in Jira

Several bugs were found in the random [online store](https://www.zalando.co.uk/) and were on the production version of the website.
  * Bug #1. Check [the screenshot of the bug report in Jira](https://drive.google.com/file/d/11kZFX5r5FIXkCpCdck_PIO_j9REYkEr1/view?usp=sharing).
  * Bug #2. Check [the screenshot of the bug report in Jira](https://drive.google.com/file/d/1yqgOSFO5KbXsyZfhNdsfk19qbNfNM_xh/view?usp=sharing).
  * Bug #3. Check [the screenshot of the bug report in Jira](https://drive.google.com/file/d/1KGYeOp9rOGZdpWZcPPmlfUhyDNMUHnfi/view?usp=sharing).

## MySQL Workbench
I created several queries based on [this](https://drive.google.com/file/d/15iab7IUHfPGE9BAriNVz6jSgld7vxiWg/view?usp=sharing) database.

<details><summary> Request #1</summary> 

   ### Description

    Show all employees who have birthdays from January 1, 1960, to December 31, 1979, and the last name begins with the letter "D". Sort the result ascending.

  ### Request
   Check request in [PNG](https://drive.google.com/file/d/1UDLC4w0pfBsexkMjV0u-QeENtX3wyIan/view?usp=sharing) and [SQL](https://drive.google.com/file/d/1vujQK21IprhKVB6d5NX8uur_jiWvRIQN/view?usp=sharing) format

</details>

<details><summary> Request #2</summary> 

   ### Description

    Show 100 highest salaries among employees issued until January 1, 2001.

  ### Request
   Check request in [PNG](https://drive.google.com/file/d/1S_WOj-ffEvw23XreU3Gl8pZM6t1vrOlU/view?usp=sharing) and [SQL](https://drive.google.com/file/d/1xZ3y5tzIxGySdmtB26kSwSZxs1vFqnkN/view?usp=sharing) format

</details>

<details><summary> Request #3</summary> 

   ### Description

    Select the employee numbers of all individuals who signed more than 1 contract after January 1, 1999.

  ### Request
   Check request in [PNG](https://drive.google.com/file/d/1y29qjjHr_6pCilRbnQfglm2Uhv-N_zq3/view?usp=sharing) and [SQL](https://drive.google.com/file/d/18NjnjkBR23IswqidXItIlFqiNe_B-kMt/view?usp=sharing) format

</details>




## Follow Me

[![Header](https://img.shields.io/badge/Linkedin-0E1116?style=for-the-badge&logo=linkedin&logoColor=1c96e8)](https://www.linkedin.com/in/dinara-malysheva-a075b1241/)
[![Header](https://img.shields.io/badge/Telegram-0E1116?style=for-the-badge&logo=telegram&logoColor=1c96e8)](https://t.me/dinara_malysheva)
