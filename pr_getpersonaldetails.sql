Create proc pr_getpersonaldetails
(
@p_mode int=null,
@p_FirstName varchar(10)=null,
@p_LastName varchar(10)=null,
@p_Age int =null,
@p_Gender varchar(10) =null,
@p_HealthIssues bit =null,
@p_DiseaseInformation varchar(100)=null,
@p_Address varchar(100) =null,
@p_ContactNumber varchar(20)=null,
@p_prefferedGenderForNursing varchar(100)=null,
@p_remarks varchar(100)=null,
@p_CreatedON datetime=null
)
As
begin 
if @p_mode=1--Save
Begin
insert into a_personaldetails
(
FirstName ,
LastName ,
Age ,
Gender ,
HealthIssues ,
DiseaseInformation ,
Address ,
ContactNumber ,
prefferedGenderForNursing ,
remarks ,
CreatedON
)
values (

@p_FirstName ,
@p_LastName ,
@p_Age ,
@p_Gender ,
@p_HealthIssues ,
@p_DiseaseInformation ,
@p_Address ,
@p_ContactNumber ,
@p_prefferedGenderForNursing ,
@p_remarks ,
@p_CreatedON 
)
End

 select * from a_personaldetails
 if(@p_mode=4)
				begin
				select * from a_personaldetails order by pid DESC;	
				end
END


Go
/*
Exec pr_getpersonaldetails

@p_mode =1,
@p_FirstName='ashalata' ,
@p_LastName ='Samruddha',
@p_Age =65,
@p_Gender= 'Female',
@p_HealthIssues =0,
@p_DiseaseInformation ='',
@p_Address= '',
@p_ContactNumber =882233660,
@p_prefferedGenderForNursing ='',
@p_remarks ='xyz',
@p_CreatedON =null
*/
