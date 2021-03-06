
include("shared.lua");

include("client/concommands.lua");
include("client/data.lua");
include("client/entity_highlight.lua");
include("client/entity_selection.lua");
include("client/makejpeg.lua");
include("client/onionskin.lua");

include("client/menu_setup.lua");

hook.Add("InitPostEntity", "SMHSetup", function()
	SMH.SetupData();
	SMH.SetupMenu();
end);

Msg("SMH client initialized.\n")
