GM.Name = "Slenderman"
GM.Author = "Daquanmangames and Mr.Bobachu"
GM.Email = "emailforxbox123@gmail.com"
GM.Website = "N/A"

team.SetUp( 0, "Civilians", Color(0, 0, 255) )
team.SetUp( 1, "Slenderman", Color(255, 0, 0) )
team.SetUp( 2, "Waiting", Color(0, 255, 0) )


function GM:Initialize()
	self.BaseClass.Initialize( self )
end

