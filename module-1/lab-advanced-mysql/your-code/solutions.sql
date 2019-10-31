SELECT au_lname, sales.ord_num, roysched.royalty
 
FROM authors

LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
LEFT JOIN roysched ON titles.title_id = roysched.title_id
;
