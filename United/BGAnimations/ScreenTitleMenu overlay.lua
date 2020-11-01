--NOTE: All coordinates and sizes are based on a 1920x1080 theme grid
--To scale the values back to 640x480(default), multiply them by 0.44444444 (yes you need that many digits)


--Til Death has this so I guess I'll throw it in as well
if IsSMOnlineLoggedIn() then
	CloseConnection()
end

--Define list of song files
local songList = {
	"chasingmidnight",	 -- Moog - Chasing Midnight (feat. Erin Renee)
	"everythingbang",	 -- Moog - Everything Bang
	"forcedinduction",	 -- Moog - Forced Induction
	"horizons",			 -- Moog - Horizons feat. Erin Renee
	"iwillfindyou",		 -- Moog - I Will Find You (feat. ALPHAMAMA)
	"liftmeup",			 -- Moog - Lift Me Up (feat. 7skies)
	"transformer"		 -- Moog - Transformer
	}

--Define metadata for list of songs (make sure to keep the same order for both tables)
local metadataList = {
	"Moog - Chasing Midnight (feat. Erin Renee)",
	"Moog - Everything Bang",
	"Moog - Forced Induction",
	"Moog - Horizons feat. Erin Renee",
	"Moog - I Will Find You (feat. ALPHAMAMA)",
	"Moog - Lift Me Up (feat. 7skies)",
	"Moog - Transformer"
}

--Define BPMs of songs (will be used later)
local songBPMs = {
	120,	-- Moog - Chasing Midnight (feat. Erin Renee)
	125,	-- Moog - Everything Bang
	128,	-- Moog - Forced Induction
	128,	-- Moog - Horizons feat. Erin Renee
	135,	-- Moog - I Will Find You (feat. ALPHAMAMA)
	128,	-- Moog - Lift Me Up (feat. 7skies)
	128		-- Moog - Transformer
}

--beatCount variable used later for counting beats
local beatCount = 0

--Set random song in the list from 1 to the length of songList{}
--This is separate from the song/metadata functions so the song and metadata can be in sync
local songDiceRoll = math.random(1,#songList)

function loadRandomTitleSong()
	local name = "Titlesongs/" .. songList[songDiceRoll]

	--Stepmania has built in sounds which rely on filenames
	--This simply utilises that system and edits a .redir file to a random song from songList{}
	local f = RageFileUtil.CreateRageFile()
	if f:Open("/Themes/" .. THEME:GetCurThemeName() .. "/Sounds/ScreenTitleMenu music.redir", 2) then
    	f:Write(name)
    f:destroy()
    end
end

function getRandomTitleSongMetadata()
	return metadataList[songDiceRoll]
end

local t =
	Def.ActorFrame {
	InitCommand=function()
		loadRandomTitleSong()
		getRandomTitleSongMetadata()
		--The random title song depends on metrics being reloaded since it rewrites a .redir file
		--I'm not sure if reloading metrics on every titlemenu entry is bad but it works
		THEME:ReloadMetrics()
	end,
	OnCommand=function(self)
		--I don't know why this is here but it is
		SCREENMAN:GetTopScreen()
	end
}

--Get song info string length (used for quad below)
local songStringLength = string.len(getRandomTitleSongMetadata())

t[#t + 1] =
	--Metadata background
	Def.Quad {
		InitCommand=function(self)
			self:diffuse(color("#000000"))
			self:diffusealpha(.5)
			self:valign(0)
			self:halign(1)
			self:fadeleft(.25)
			self:xy(SCREEN_RIGHT,0)

			--Make size depend on string length
			--I try not to do this unless the string lengths can be accounted for
			--For example, I wouldn't do this in song select or profile info where the length can be whatever
			self:zoomto(songStringLength * 12 , 34)
		end
}

t[#t + 1] =
	--Metadata text
	LoadFont("_raleway semibold 16px") ..
	{
		InitCommand=function(self)
			self:zoom(1):xy(SCREEN_RIGHT-10,10):halign(1):valign(0)
		end,
		OnCommand=function(self)
			--Grab text from metadata function
			self:settext(getRandomTitleSongMetadata())
		end
}

--[[t[#t + 1] =
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#FFFFFF"))
			self:diffusealpha(0.4)
			self:zoomto(96,96)
			self:addrotationz(45)
			self:xy(480,480)
		end,

		OnCommand=function(self)
			--Set animation based on BPM of song chosen by songDiceRoll. Divided by 60 to output 1 beat in seconds
			--self:spring( (songBPMs[songDiceRoll] / 60) * 0.5)
			ms.ok(songBPMs[songDiceRoll])
			self:sleep(0.3)
			--self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			--self:zoomto(128,128)
			--self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			--self:zoomto(96,96)
			self:heartbeat()
			self:effectmagnitude(0.5,1,1.5)
			self:effectperiod( 60 / songBPMs[songDiceRoll] )
		end,


}

t[#t + 1] =
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#FFFFFF"))
			self:diffusealpha(0.4)
			self:zoomto(96,96)
			self:addrotationz(45)
			self:xy(396,640)
		end,

		OnCommand=function(self)
			--Set animation based on BPM of song chosen by songDiceRoll. Divided by 60 to output 1 beat in seconds
			--self:spring( (songBPMs[songDiceRoll] / 60) * 0.5)
			self:sleep(0.3)
			--self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			--self:zoomto(128,128)
			--self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			--self:zoomto(96,96)
			self:bob()
			self:effectmagnitude(0,15,0)
			self:effectperiod( 60 / songBPMs[songDiceRoll] )
		end,


}--]]

t[#t + 1] =
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#FFFFFF"))
			self:diffusealpha(0.4)
			self:zoomto(96,96)
			self:addrotationz(45)
			self:xy(480,480)
		end,

		OnCommand=function(self)
			local mE = self
			ms.ok(songBPMs[songDiceRoll])
			self:sleep(0.1)
			self:queuecommand("Thump")
		end,

		ThumpCommand=function(self)
			local oneBeat = 60 / songBPMs[songDiceRoll]

			--Use beat count to play special animation every bar
			if beatCount % 4 == 0 then
				self:decelerate( oneBeat * 0.1)
				self:zoomto(256,256)
				self:accelerate( oneBeat * 0.1)
				self:zoomto(96,96)
				self:sleep( oneBeat * 0.8)
			else
				self:decelerate( oneBeat * 0.2)
				self:zoomto(128,128)
				self:accelerate( oneBeat * 0.2)
				self:zoomto(96,96)
				self:sleep( oneBeat * 0.6)
			end

			beatCount = beatCount + 1
			ms.ok(beatCount)
			self:queuecommand("Thump")
		end,


}

--[[t[#t + 1] =
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#FFFFFF"))
			self:diffusealpha(0.4)
			self:zoomto(96,96)
			self:addrotationz(45)
			self:xy(396,640)
		end,

		OnCommand=function(self)
			--Set animation based on BPM of song chosen by songDiceRoll. Divided by 60 to output 1 beat in seconds
			--self:spring( (songBPMs[songDiceRoll] / 60) * 0.5)
			self:sleep(0.3)
			self:queuecommand("Thump")
		end,

		ThumpCommand=function(self)
			--Set animation based on BPM of song chosen by songDiceRoll. Divided by 60 to output 1 beat in seconds
			--self:spring( (songBPMs[songDiceRoll] / 60) * 0.5)
			self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			self:zoomto(128,128)
			self:spring( (60 / songBPMs[songDiceRoll]) * 0.25)
			self:zoomto(96,96)
			self:queuecommand("Thump")
		end,


}--]]

return t