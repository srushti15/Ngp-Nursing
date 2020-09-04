Create proc pr_userdetails
(
	@p_username varchar(30),
	@p_password varchar(30),
	@p_category int,
	@p_mode  int

)
As
Begin 

	create table #temp
	(
		username varchar(30),
		password varchar(30),
		category int
	)
	if @p_mode=0--save
	Begin
		insert into #temp
			(username,password ,category)
			values (@p_username ,@p_password ,@p_category )
			select username,password ,category from #temp
	End
End






Go
/*
exec pr_userdetails

@p_username='Swathi',
@p_password='a100',
@p_category=2

*/