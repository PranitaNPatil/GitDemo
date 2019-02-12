select * from AccountInfo


---------------------------------------------------
select AcNumber,AcBalance as [Available Blance],
 (a.AcBalance*3/100) as [Accumulated Interest],
        250 as [Anual Charge],
		(a.AcBalance*3/100) + 250 as [Effective Balance] from AccountInfo a;
		------------------------------------------------------------------------------------------


select a.AcFirstName+a.AcLastName +' has a Account Type '+a.AcType as [Account Info] from AccountInfo a;
---------------------------------------------------------------------------------------------------------

select a.AcNumber,a.AcBalance,
                case a.AcType
                when 'Saving' then '*'
				when 'Current' then '**'
				when 'PF' then '***'
				else 'No Ranking'
				end as Ranking
                from AccountInfo a;