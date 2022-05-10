SELECT  p.firstName, p.lastName, a.city, a.state
FROM Person as p
left join Address as a
on p.personId = a.personId