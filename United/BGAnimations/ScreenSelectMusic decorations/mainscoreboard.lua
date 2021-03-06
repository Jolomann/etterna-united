--Score position table
--This is a hacky workaround to make the first score not affected by position commands
--(see line 70)
local scorePosTable = {0,1,2,3,4,5,6}


--Custom clamp function. Leaving this here as a note since it's already built in to the game but it's still useful knowledge.
--[[function customclamp(number,min_val,max_val)
  if(number > max_val) then
    return max_val
  end
  if(number < min_val) then
    return min_val
  end
  return number
end--]]

--Randomly selected usernames on scoreboard
local playerTable = {
	"D O G",
	"tHe oNE nAME tHAT IS lONG",
	"lowercase",
	"all seeing eyes",
	"Dole Bananas",
	"manipgang",
	"782653478625",
	"BagelBark500",
	"ankle length men",
	"MAGICFORCE68",
	"dude",
	"tryhard69",
	"username",
	".",
	"BEATMANIA IIDX 27",
	"DJMAX RESPECT V",
	"Lunatic Rave 2"
}



local t = Def.ActorFrame {}

	t[#t + 1] = Def.ActorFrame{
		InitCommand=function(self)
	    	self:xy(75,582)
		end,

		--Scoreboard background
		Def.Quad{
	  		InitCommand=function(self)
	  			self:xy(0,0)
	  			self:halign(0)
	  			self:valign(0)
	  			self:zoomto(500,380)
	  			self:diffuse(color("#000000"))
	  			self:diffusealpha(0.2)
	  		end

		},

		--Score scroller frame 
		Def.ActorFrame{
			InitCommand=function(self)
				self:xy(16,10)
				self:zoomto(468,370)
				self:fadebottom(0.05)
			end
		},
	}


--Make 5 random scoreboard entries
--(Will be top 5 for the current difficulty in the future)
for i = 1 ,5 do
	t[#t + 1] = Def.ActorFrame{
		InitCommand=function(self)
	    	self:xy(91,592)
		end,

		--Individual score frames
		--This might be restructured in the future when the scores aren't hardcoded
		Def.ActorFrame{
			Name="Score" .. tostring(i);
			InitCommand=function(self)
				self:xy(0,scorePosTable[i] * 60)
				--self:zoomto(468,54)
			end,

			--Player avatar
			Def.Sprite{
				Name="ScoreAvatar" .. tostring(i);
				OnCommand=function(self)
				--Avoid defining file extension to support multiple image formats
				local avatarTexture = THEME:GetPathG("","Placeholders/" .. tostring(math.random(1,32)) .. " scoreboard")
					self:halign(0)
					self:valign(0)
					self:Load(avatarTexture)
					self:scaletoclipped(54,54)
					self:diffusealpha(1)
				end
			},

			LoadFont("_raleway semibold 24px") .. {
					Name="ScoreName" .. tostring(i);
					OnCommand=function(self)
					local playerText = playerTable[math.random(1,17)]
						self:xy(68-2,6+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(playerText)
					end
			},

			LoadFont("_vikive 16px") .. {
					Name="ScoreJudgments" .. tostring(i);
					OnCommand=function(self)
					local marvCount 	= tostring(math.random(900,2200))
					local perfCount 	= tostring(math.random(150,900))
					local greatCount 	= tostring(math.random(10,150))
					local goodCount		= tostring(math.random(10,30))
					local booCount		= tostring(math.random(10,20))
					local missCount		= tostring(math.random(2,60))
					local comboCount	= tostring(math.random(300,2700))
						self:xy(68-2,32+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(marvCount .. " / " .. perfCount .. " / " .. greatCount .. " / " .. goodCount .. " / " .. booCount .. " / " .. missCount .. " (" .. comboCount .. "x)")
					end
			}
		}
	}
end

--Personal best score entry
t[#t + 1] = Def.ActorFrame{
		InitCommand=function(self)
	    	self:xy(91,839)
		end,

		--PB panel bg
		Def.Quad{
			InitCommand=function(self)
				self:xy(-16,55)
				self:valign(0)
				self:halign(0)
				self:zoomto(500,68)
				self:diffuse(color("#FFFFFF"))
				self:diffusealpha(0.2)
			end
		},
		--Individual score frames
		--This might be restructured in the future when the scores aren't hardcoded
		Def.ActorFrame{
			Name="Score" .. tostring(i);
			InitCommand=function(self)
				self:xy(0,62)
				--self:zoomto(468,54)
			end,

			--Player avatar
			Def.Sprite{
				Name="PBAvatar" .. tostring(i);
				OnCommand=function(self)
				--Avoid defining file extension to support multiple image formats
				local avatarTexture = THEME:GetPathG("","Profile/Avatars/default")
					self:halign(0)
					self:valign(0)
					self:Load(avatarTexture)
					self:scaletoclipped(54,54)
					self:diffusealpha(1)
				end
			},

			LoadFont("_raleway semibold 24px") .. {
					Name="PBName";
					OnCommand=function(self)
					local profile = PROFILEMAN:GetProfile()
					local rawProfileName = profile:GetDisplayName()
						self:xy(68-2,6+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(rawProfileName)
							--Truncate name if >425 width
					        if self:GetZoomedWidth() > 425 then
					          finalProfileName = string.sub(rawProfileName,1,26) .. "..."
					        else
					          finalProfileName = rawProfileName
					        end
			          	self:settext(finalProfileName)
					end
			},

			LoadFont("_vikive 16px") .. {
					Name="PBJudgments" .. tostring(i);
					OnCommand=function(self)
					local marvCount 	= tostring(math.random(900,2200))
					local perfCount 	= tostring(math.random(150,900))
					local greatCount 	= tostring(math.random(10,150))
					local goodCount		= tostring(math.random(10,30))
					local booCount		= tostring(math.random(10,20))
					local missCount		= tostring(math.random(2,60))
					local comboCount	= tostring(math.random(300,2700))
						self:xy(68-2,32+2)
						self:zoom(1)
						self:halign(0)
						self:valign(0)
						self:settext(marvCount .. " / " .. perfCount .. " / " .. greatCount .. " / " .. goodCount .. " / " .. booCount .. " / " .. missCount .. " (" .. comboCount .. "x)")
					end
			},

			LoadFont("_raleway semibold 24px") .. {
					Name="PBPercent";
					OnCommand=function(self)
						self:halign(1)
						self:valign(0)
						self:xy(475-2,6+2)
						self:zoom(1)

						--Grab PB at current song and rate
						if GAMESTATE:GetCurrentSong() ~= nil then
							rtTable = getRateTable()
							if rtTable ~= nil then
								rates, rateIndex = getUsedRates(rtTable)
								scoreIndex = 1
								self:queuecommand("Set")
							end
						end

						self:queuecommand("Set")
					end,
					--Apply wife%
					SetCommand = function(self)
				    	if GAMESTATE:GetCurrentSong() ~= nil then
		                    rtTable = getRateTable()
		                    if rtTable ~= nil then
		                        rates, rateIndex = getUsedRates(rtTable)
		                        scoreIndex = 1
		                        local score = rtTable[rates[rateIndex]][scoreIndex]
		                        self:settextf("%05.2f%%", clamp(notShit.floor(score:GetWifeScore() * 100, 2),0,100))
		                    else
		                        self:settext("no scores")
		                    end
		                else
		                    self:settext("no song")
		                end
				    end,
				    --Hopefully I remembered every necessary command here
				    ScoreChangedMessageCommand = function(self)
				    	self:queuecommand("Set")
				   	end,
				   	CodeMessageCommand = function(self)
				    	self:queuecommand("Set")
				   	end,
				   	CurrentSongChangedMessageCommand = function(self)
				    	self:queuecommand("Set")
				   	end,
				   	StepsChangedCommand = function(self)
				    	self:queuecommand("Set")
				   	end,
				   	RateChangedMessageCommand = function(self)
				    	self:queuecommand("Set")
				   	end,

			},
		}
	}

return t