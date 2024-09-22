
#Q1
select * from pat where claim > (SELECT AVG(claim) FROM pat
								where children >0) and region = "southeast" and smoke = "Yes";
   
#Q2
select avg(bmi),avg(claim) from pat where children>0 and smoke = "No";  

select * from pat where claim>(select avg(claim) from pat)
							and bmi>(select avg(bmi) from pat)
                            and smoke = "No" and children>0;
                            
#Q3.
select avg(bmi) from pat where diabetic = "Yes" and children>0 and region = "southwest";

select * from pat where claim >(select avg(claim) from pat where bmi>(select avg(bmi) from pat where diabetic = "Yes"
									and children>0 and region = "southwest"));
                                    
#Q4.

                                    
                                    
                                    
                                    