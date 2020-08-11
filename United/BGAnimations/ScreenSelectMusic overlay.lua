local t = Def.ActorFrame {}

--Banner background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(75,455):zoomto(500,127):diffuse(color("#000000")):diffusealpha(0.4)
    end
  }

--StepsDisplay background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(75,155):zoomto(500,300):diffuse(color("#000000")):diffusealpha(1)
    end
  }

--StepsDisplay placeholders

--Easy(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightEasy";
  InitCommand = function(self)
    self:xy(91,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(126,481)
      end,
      OnCommand=function(self)
        self:settext("EASY")
      end
  }--]]

--Easy(locked)
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
    self:xy(91,474):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
    self:xy(202,476):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
    self:xy(91,476):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
    self:xy(91,497):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(126,481):diffusealpha(0.2)
      end,
      OnCommand=function(self)
        self:settext("EASY")
      end
  }
--Normal(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightNormal";
  InitCommand = function(self)
    self:xy(210,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(231,481)
      end,
      OnCommand=function(self)
        self:settext("NORMAL")
      end
  }--]]

--Normal(locked)
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameTopNormal";
  InitCommand = function(self)
    self:xy(210,474):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameRightNormal";
  InitCommand = function(self)
    self:xy(321,476):zoomto(2,21):halign(1):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameLeftNormal";
  InitCommand = function(self)
    self:xy(210,476):zoomto(2,21):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameBottomNormal";
  InitCommand = function(self)
    self:xy(210,497):zoomto(111,2):halign(0):valign(0):diffusealpha(0.2)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(231,481):diffusealpha(0.2)
      end,
      OnCommand=function(self)
        self:settext("NORMAL")
      end
  }

--Hard(selected)
--[[t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightHard";
  InitCommand = function(self)
    self:xy(329,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(363,481)
      end,
      OnCommand=function(self)
        self:settext("HARD")
      end
  }--]]

--Hard(not selected)
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameTopHard";
  InitCommand = function(self)
    self:xy(329,474):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameRightHard";
  InitCommand = function(self)
    self:xy(440,476):zoomto(2,21):halign(1):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameLeftHard";
  InitCommand = function(self)
    self:xy(329,476):zoomto(2,21):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  Def.Quad {
  Name="DiffFrameBottomHard";
  InitCommand = function(self)
    self:xy(329,497):zoomto(111,2):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(363,481):diffuse(color("#a435c4"))
      end,
      OnCommand=function(self)
        self:settext("HARD")
      end
}

--Challenge(selected)
t[#t + 1] =
  Def.Quad {
  Name="DiffHighlightChallenge";
  InitCommand = function(self)
    self:xy(448,474):zoomto(111,25):halign(0):valign(0):diffuse(color("#a435c4")):diffusealpha(1)
  end
}
t[#t + 1] =
  LoadFont("_raleway extrabold 16px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(455,481)
      end,
      OnCommand=function(self)
        self:settext("CHALLENGE")
      end
  }

--MSD Display 
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(443-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("1")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(469-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("4")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(489-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext(".")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(507-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("6")
      end
  }
t[#t + 1] =
  LoadFont("_vikive bold 48px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(1):halign(0):valign(0):xy(531-7,518):diffuse(color("#e3b22a"))
      end,
      OnCommand=function(self)
        self:settext("1")
      end
  }
t[#t + 1] =
  LoadFont("_raleway extrabold 12px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(0.3):halign(1):valign(0):xy(559,559)
      end,
      OnCommand=function(self)
        self:settext("MSD")
      end
  }

--Banner (doesn't work)
t[#t+1] = Def.Sprite {
  Name = "Banner",
  InitCommand = function(self)
    self:xy(SCREEN_CENTER_X/2,120)
  end,
  SetCommand = function(self)
    if topScreen:GetName() == "ScreenSelectMusic" or topScreen:GetName() == "ScreenNetSelectMusic" then
      local bnpath = nil
      if song then
        bnpath = song:GetBannerPath()
      elseif group then
        bnpath = SONGMAN:GetSongGroupBannerPath(group)
      end
      if not bnpath or bnpath == "" then
        bnpath = THEME:GetPathG("Common", "fallback banner")
      end
      self:LoadBackground(bnpath)
      self:zoomto(500,300)
    end
  end
}

--Screen name text
t[#t + 1] =
  LoadFont("_raleway black 36px") ..
    {
      InitCommand=function(self)
        self:uppercase(true):diffusealpha(0.1):halign(0):valign(0):xy(75,50)
      end,

      OnCommand=function(self)
        self:settext("song select")
      end
  }

--Pack name text
t[#t + 1] =
  LoadFont("_raleway black 48px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.51):halign(1):valign(1):xy(1840,140)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        self:settext("pack name")
      end
  }

--This would be the real clock numbers but the kerning is suuuuuuuuper scuffed and idk how to fix it

--[[--Clock(numbers)
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.51):halign(1):valign(0):xy(1810,50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("11:11")
      end
  }--]]

--1
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 49 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("1")
      end
}

--2
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 37 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("2")
      end
}

--:
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 25 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext(":")
      end
}

--3
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815 - 14 , 50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("3")
      end
}

--4
t[#t + 1] =
  LoadFont("_vikive bold 24px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1815,50)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        --Clock update function
        local function UpdateTime(self)
            self:GetChild('Time'):settext(string.format("%02i:%02i", Hour(), Minute() ))
        end

        self:settext("4")
      end
}

--PM
t[#t + 1] =
  LoadFont("_raleway black 18px") ..
    {
      InitCommand=function(self)
        self:diffusealpha(0.1):halign(1):valign(0):xy(1840,52)
      end,

      OnCommand=function(self)
        local whereAreWe = SCREENMAN:GetTopScreen()
        self:settext("PM")
      end
  }

--Sort bar background
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(640,155):zoomto(1205,35):diffuse(color("#866d18")):diffusealpha(1)
    end
  }

--Sort bar highlight
t[#t + 1] =
  Def.Quad{
    InitCommand=function(self)
      self:halign(0):valign(0):xy(640,155):zoomto(150,35):diffuse(color("#e3b22a")):diffusealpha(1)
    end
  }

return t
