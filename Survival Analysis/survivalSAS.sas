
 /* Question 6*/
data hw4_6; input time  stress iq Censor;
cards;
1	23	102	1
4	25	108	1
6	20	115	0
7	96	116	1
10	180	132	1
10	170	131	0
13	24	142	1
14	90	145	1
17	130	154	0
18	44	155	1
20	75	165	1
22	58	169	1
23	58	168	1
26	22	188	1
26	111	165	0
29	32	190	1
30	132	189	1
34	5	198	0
38	132	198	1
42	88	210	1
46	101	130	0

;
run;




/* Parts a and b*/

proc phreg data=hw4_6;
model time*Censor(0)= stress iq ;
run;



/* Part c*/
proc phreg data=hw4_6;
model time*Censor(0)= stress iq  stresst;
stresst=stress*time;
run;
