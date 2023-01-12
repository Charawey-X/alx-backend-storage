<div data-target="readme-toc.content" class="Box-body px-5 pb-5">
            <article class="markdown-body entry-content container-lg" itemprop="text"><h1 dir="auto"><a id="user-content-0x01-nosql" class="anchor" aria-hidden="true" href="#0x01-nosql"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>0x00-MySQL_Advanced</h1>
<h2 dir="auto"><a id="user-content-description" class="anchor" aria-hidden="true" href="#description"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Description</h2>
<p dir="auto">0x00-MySQL_Advanced</p>
<h2 dir="auto"><a id="user-content-tasks" class="anchor" aria-hidden="true" href="#tasks"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M7.775 3.275a.75.75 0 001.06 1.06l1.25-1.25a2 2 0 112.83 2.83l-2.5 2.5a2 2 0 01-2.83 0 .75.75 0 00-1.06 1.06 3.5 3.5 0 004.95 0l2.5-2.5a3.5 3.5 0 00-4.95-4.95l-1.25 1.25zm-4.69 9.64a2 2 0 010-2.83l2.5-2.5a2 2 0 012.83 0 .75.75 0 001.06-1.06 3.5 3.5 0 00-4.95 0l-2.5 2.5a3.5 3.5 0 004.95 4.95l1.25-1.25a.75.75 0 00-1.06-1.06l-1.25 1.25a2 2 0 01-2.83 0z"></path></svg></a>Tasks</h2>
<table>
<thead>
<tr>
<th align="center">Task</th>
<th align="center">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">0-uniq_users.sql</td>
<td align="center">SQL script that creates a table users following these requirements:

 id, email , name</td>
</tr>
<tr>
<td align="center">1-country_users.sql</td>
<td align="center">In and not out</td>
</tr>
<tr>
<td align="center">2-fans.sql</td>
<td align="center">SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans</td>
</tr>
<tr>
<td align="center">3-glam_rock.sql</td>
<td align="center">SQL script that lists all bands with Glam rock as their main style, ranked by their longevity</td>
</tr>
<tr>
<td align="center">4-store</td>
<td align="center">SQL script that creates a trigger that decreases the quantity of an item after adding a new order.</td>
</tr>
<tr>
<td align="center">5-valid_email.sql</td>
<td align="center">SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.</td>
</tr>
<tr>
<td align="center">6-bonus</td>
<td align="center">SQL script that creates a stored procedure AddBonus that adds a new correction for a student.</td>
</tr>
<tr>
<td align="center">7-average_score.sql</td>
<td align="center">SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student. Note: An average score can be a decimal</td>
</tr>
<tr>
<td align="center">8-index_my_names.sql</td>
<td align="center">SQL script that creates an index idx_name_first on the table names and the first letter of name.</td>
</tr>
<tr>
<td align="center">9-index_name_score.sql</td>
<td align="center">SQL script that creates an index idx_name_first_score on the table names and the first letter of name and the score.</td>
</tr>
<tr>
<td align="center">10-div.sql</td>
<td align="center">SQL script that creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0.</td>
</tr>
<tr>
<td align="center">11-need_meeting.sql</td>
<td align="center">SQL script that creates a view need_meeting that lists all students that have a score under 80 (strict) and no last_meeting or more than 1 month.</td>
</tr>
<tr>
<td align="center">100-average_weighted_score.sql</td>
<td align="center">SQL script that creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student.</td>
</tr>
<tr>
<td align="center">101-average_weighted_score.sql</td>
<td align="center">SQL script that creates a stored procedure ComputeAverageWeightedScoreForUsers that computes and store the average weighted score for all students.</td>
</tr>
</tbody>
</table>
