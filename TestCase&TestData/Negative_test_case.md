|                   |                                                                       |                                                                                                                                                           |
|-------------------|-----------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **ID**            | TC_002                                                                |
| **Title**        	| Negative test case (Selected an incorrect calorie count)             	|                                                                                 	|
| **Priority**     	| Low                                                                  	|                                                                                 	|
| **Preconditions** | Not required                                                         	|                                                                                 	|
|                  	|                                                                      	|                                                                                 	|
| **Steps**        	| **Step Details**                                                     	| **Expected result**                                                             	|
|                  	| 1) Go to https://www.eatthismuch.com/                                	| A page with a form for creating a personal diet is opened.                      	|
|                  	| 2) Clear the website cache in Devtools console and refresh the page. 	| The cache should be cleared.                                                    	|
|                  	| 3) Select the "Paleo" diet type.                                     	| The "Paleo" diet type should be selected.                                       	|
|                  	| 4) In the "I want to eat" input 0 calories.                          	| The number of calories should be 0.                                             	|
|                  	| 5) In the "In" field, select 3 meals from the drop-down list.        	| The number of meals should be chosen.                                           	|
|                  	| 6) Hit the "Generate" button.                                        	| The error "For 3 meals, please enter 300 to 12,000 calories" should be visible. 	|
|                  	|                                                                      	| The "I want to eat" field should be framed in red                               	|
