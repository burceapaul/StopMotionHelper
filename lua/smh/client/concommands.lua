
local function Record()
	SMH.Data:_Call("Record");
end

local function NextPosition()
	local pos = SMH.Data.Position + 1;
	if pos > SMH.Data.PlaybackLength then
		pos = 0;
	end
	SMH.Data.Position = pos;
end

local function PrevPosition()
	local pos = SMH.Data.Position - 1;
	if pos < 0 then
		pos = SMH.Data.PlaybackLength;
	end
	SMH.Data.Position = pos;
end

local function Play()
	SMH.Data:_Call("Play");
end

local function Stop()
	SMH.Data:_Call("Stop");
end

local function Onion()
	SMH.Data.OnionSkin = not SMH.Data.OnionSkin;
end

local function QuickSave()
	SMH.Data:_Call("QuickSave");
end

local function MakeJPEG()
	SMH.Data.Rendering = not SMH.Data.Rendering;
end

concommand.Add("smh_record", Record);
concommand.Add("smh_next", NextPosition);
concommand.Add("smh_previous", PrevPosition);
concommand.Add("+smh_playback", Play);
concommand.Add("-smh_playback", Stop);
concommand.Add("smh_onionskin", Onion);
concommand.Add("smh_quicksave", QuickSave);
concommand.Add("smh_makejpeg", MakeJPEG);