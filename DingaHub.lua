local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local v0 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\15\242\202\66\187\44\46\49\239\221\87", "\92\71\134\190\50\232\73"));
local v1 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\3\10\186\203\86\88\62\23\11\178", "\76\80\126\219\185\34\61"));
local v2 = LUAOBFUSACTOR_DECRYPT_STR_0("\40\199\80\117\127\95\230\229\76\254\76\119\115\126\230\234", "\135\108\174\62\18\30\23\147");
local v3 = false;
local v4 = "";
local v5 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\132\235\50\234\22\175\63\222\162\224\41\216\43\171\33\209\191\234\47", "\167\214\137\74\171\120\206\83")):GetClientId();
local v6 = LUAOBFUSACTOR_DECRYPT_STR_0("\178\223\7\111\199\134\187\217\13\118\221\158\180\216\23\111\221", "\199\235\144\82\61\152");
game.StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\52\19\183\47\41\25\173\34\1\31\186\42\19\31\182\37", "\75\103\118\217"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\93\100\24\188", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\39\46\135\181\49\233\202\110\16\146\177\20\245\221\35", "\156\168\78\64\224\212\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\235\189\218", "\174\103\142\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\36\90\57\54\91\184\122\39\88\49\43\30\204\89\104\120\61\49\30\203\66\41\77\44\32\90", "\152\54\72\63\88\69\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\209\252\93\192\205\225\82", "\60\180\164\142")]=(306 - (112 + 189))});
wait(9 - 7);
setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\80\74\17\57\52\183\93\23\90\12\58\36\226\0\92\16\2\46\104\191\57\104\73\81\33\38\222\3\10", "\114\56\62\101\73\71\141"));
local v7 = LUAOBFUSACTOR_DECRYPT_STR_0("\188\224\213\195\185\225\206\198", "\164\216\137\187");
local v8 = LUAOBFUSACTOR_DECRYPT_STR_0("\192\226\27\179\128\167\25\248\211\99", "\107\178\134\81\210\198\158");
local v9 = LUAOBFUSACTOR_DECRYPT_STR_0("\105\64\210", "\202\88\110\226\166");
local v10 = game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\203\27\150\231\217\153\64\205\252\207\218\14\151\227\194\141\24\139\249\133\194\31\139\184\155\141\94\205\168\196\194\2\135\170", "\170\163\111\226\151") .. v7 .. LUAOBFUSACTOR_DECRYPT_STR_0("\87\63\165\54\75\37\32\21\109", "\73\113\80\210\88\46\87") .. v8 .. LUAOBFUSACTOR_DECRYPT_STR_0("\199\56\212\2\226\220\37\195\27\243\199\58\200\0\186", "\135\225\76\173\114") .. v9);
if (v10 == LUAOBFUSACTOR_DECRYPT_STR_0("\49\232\161\145\185\169\175\37\196\182\166\173\177\174\30", "\199\122\141\216\208\204\221")) then
	local v33 = 0 - 0;
	while true do
		if (v33 == (0 + 0)) then
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\136\207\2\255\106\172\237\252\0\224\116\255\174\220\4\249\119\248\237\211\31\228\56\240\162\200\30\244\54", "\150\205\189\112\144\24"));
			v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\22\129\177\72\42\135\5\25\35\141\188\77\16\129\30\30", "\112\69\228\223\44\100\232\113"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\22\19\223\179", "\230\180\127\103\179\214\28")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\187\3\75\164\177\143\141\185\1\72\191\232\206\184\160\30\74\246\229\192\184\233\23\75\163\229\203\226", "\175\204\201\113\36\214\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\217\39\221\16\78\195\59", "\100\39\172\85\188")]=(4 - 1)});
			v33 = 1 + 0;
		end
		if (v33 == (1745 - (1344 + 400))) then
			return false;
		end
	end
end
local v11 = v0:JSONDecode(v10);
if v11.success then
	local v34 = 405 - (255 + 150);
	while true do
		if (v34 == (0 + 0)) then
			v3 = true;
			v4 = v11.sessionid;
			break;
		end
	end
else
	local v35 = 0 + 0;
	while true do
		if (v35 == (0 - 0)) then
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\136\106\171\143\33\247\56", "\83\205\24\217\224") .. v11.message);
			v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\213\192\195\57\200\202\217\52\224\204\206\60\242\204\194\51", "\93\134\165\173"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\251\213\206\63", "\30\222\146\161\162\90\174\210")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\75\104\30", "\106\133\46\16")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\125\50\97\243\72\26\24", "\32\56\64\19\156\58") .. v11.message),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\221\247\87\78\251\143\84", "\224\58\168\133\54\58\146")]=(9 - 6)});
			v35 = 1740 - (404 + 1335);
		end
		if (v35 == (407 - (183 + 223))) then
			return false;
		end
	end
end
local v12 = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\81\66\95\237\102\220\200\68\75\87\92\179\114\143\147\3\76\84\94\238\112\148\132\4\87\66\78\243\97\200\132\4\84\25\88\245\121\131\159\28\88\68\78\178\90\148\142\4\87\25\70\252\124\136\200\24\86\67\89\254\112", "\107\57\54\43\157\21\230\231")))();
local v13 = v12:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\138\28\240", "\175\187\235\113\149\217\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\166\143\75\226\81\109\62\239\177\94\230\116\113\41\162", "\24\92\207\225\44\131\25")});
local v14 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\210\181\73", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\220\44\79\178\212\37", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\228\71\81", "\19\97\135\40\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\94\43\58\60\34\171\72\58\63\117\126\225\8\103\99\124\98\250\9\106\98\119", "\81\206\60\83\91\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\185\213\127\38\214\64\139\64\167\201", "\196\46\203\176\18\79\163\45")]=false});
v14:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\143\39\114\29\43\246\234\248\22\113\94\0\242\225\191\35\86\11\38\187\223\170\39\115\23\49\246\175\148\45\121\23\42\187\220\161\49\106\27\41", "\143\216\66\30\126\68\155"));
v14:AddParagraph(LUAOBFUSACTOR_DECRYPT_STR_0("\158\192\4\216\133\181\210\243\185\193\2\197\133\170\196\161\186\218\8\198\204\182\218", "\129\202\168\109\171\165\195\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\33\77\36\204\209\25\166\47\89\51\221\158\0\233\98\89\59\212\209\3\166\55\75\50\202\205\84\242\45\24\50\192\202\17\232\38\24\35\208\219\29\244\98\84\62\219\219\26\245\39\24\54\214\218\84\232\45\76\119\207\209\6\244\59\24\54\218\209\1\242\98\80\54\206\215\26\225\98\89\51\203\144\84\210\42\81\36\152\205\13\245\54\93\58\152\201\29\234\46\24\56\222\216\17\244\98\85\56\202\219\84\246\39\74\60\203\158\21\232\38\24\37\221\201\21\244\38\75\119\209\208\7\239\38\93\119\215\216\84\226\43\75\52\215\204\16\166\35\86\51\152\223\23\229\39\75\36\152\202\27\166\32\93\35\217\158\18\227\35\76\34\202\219\7", "\134\66\56\87\184\190\116"));
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\48\4\190", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\166\73\5\93\159\205\161\85\72\117\202\240\243\123\64\101\159\213\182\66\64", "\191\157\211\48\37\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\30\248\16\56\222\28\255", "\90\191\127\148\124")]=function()
	local v22 = 0 - 0;
	while true do
		if (v22 == (0 + 0)) then
			setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\112\147\58\7\107\221\97\88\124\142\32\16\121\143\59\21\54\138\55\4\125\139\34\30\96\201\39\24\55\151\60\24\124\146\45\3\107", "\119\24\231\78"));
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\177\40\169\70\213\88\95\139\34\229\102\213\78\26\194\14\170\90\213\69\21\195", "\113\226\77\197\42\188\32"));
			v22 = 1 + 0;
		end
		if ((338 - (10 + 327)) == v22) then
			game.StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\9\19\250\177\20\25\224\188\60\31\247\180\46\31\251\187", "\213\90\118\148"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\39\160\90\72", "\45\59\78\212\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\83\143\135\143\54\227\249\31", "\144\112\54\227\235\230\78\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232", "\59\211\72\111\156\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\130\239\33\71\159\173\36\65\199\207\36\64\140\163\14\65\151\234\40\74\198", "\77\46\231\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\65\164\65\174\93\185\78", "\32\218\52\214")]=(7 + 3)});
			break;
		end
	end
end});
v14:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\22\60\173", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\133\62\171\168\149\35\41\204\20\165\186\190\57\57\136\112\133\167\171\63\63\137", "\86\75\236\80\204\201\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\64\123\137\252\138\113\74", "\235\18\33\23\229\158")]=function()
	local v23 = 338 - (118 + 220);
	while true do
		if (v23 == (1 + 0)) then
			game.StarterGui:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\99\191\207\191\126\181\213\178\86\179\194\186\68\179\206\181", "\219\48\218\161"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\120\104\69\222", "\128\132\17\28\41\187\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\59\8\61\92\41\39\4", "\61\97\82\102\90"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\43\179\95", "\105\204\78\203\43\167\55\126")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\163\45\25\18\44\210\83\229\142\42\13\16\11\213\85\229\134\42\16\24\68\228\94\181\163\38\26\82", "\49\197\202\67\126\115\100\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\78\205\40\148\95\81\57", "\62\87\59\191\73\224\54")]=(459 - (108 + 341))});
			break;
		end
		if (v23 == (0 + 0)) then
			setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\239\22\238\217\244\88\181\134\227\11\233\202\232\16\254\135\224\5\181\155\204\50\237\157\239\3\201\216\181", "\169\135\98\154"));
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\239\126\42\83\252\27\221\201\55\0\93\238\48\199\217\115\100\120\244\61\195\139\84\43\68\244\54\204\138", "\168\171\23\68\52\157\83"));
			v23 = 4 - 3;
		end
	end
end});
local v15 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\218\112\248\168", "\231\148\17\149\205\69\77")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\164\196\244\66\241\148\231\235\244\80\246\142", "\159\224\199\167\155\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\240\51\220", "\178\151\147\92")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\255\84\51\1\95\127\152\244\72\104\93\3\46\216\165\31\97\70\25\35\213\165", "\26\236\157\44\82\114\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\60\208\86\35\59\216\116\36\34\204", "\59\74\78\181")]=false});
local v16 = "";
local v17 = "";
v15:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\208\87\95", "\211\69\177\58\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\246\124\231\231\202\186\224", "\171\215\133\25\149\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\205\52\251\250\60\232", "\34\129\168\82\154\143\80\156")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\177\183\43\31\108\71\154\132\162\35\14\73\92", "\233\229\210\83\107\40\46")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\67\62\218\7\192\65\57", "\101\161\34\82\182")]=function(v24)
	v16 = v24;
end});
v15:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\84\251", "\78\136\109\57\158\187\130\226")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\62\234\226\41\48\235\245", "\145\94\95\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\200\18\212\91\187\233", "\215\157\173\116\181\46")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\1\177\147\230\254\60\167\138\226\202\48\181\153", "\186\85\212\235\146")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\128\26\242\59\239\91\201", "\56\162\225\118\158\89\142")]=function(v25)
	v17 = v25;
end});
v15:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\4\205\170", "\184\60\101\160\207\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\141\123\181\63\194\104\179\113\163\108\172\61\139\127\189\37\139\115\178", "\220\81\226\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\212\142\247\232\198\16\222", "\167\115\181\226\155\138")]=function()
	local v26 = 1493 - (711 + 782);
	local v27;
	local v28;
	while true do
		if (v26 == (1 - 0)) then
			v27 = game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\234\54\243\76\104\43\137\173\41\226\69\122\100\210\234\108\240\85\117\62\199\242\43\168\13\53\32\137\189\44\230\81\126\44", "\166\130\66\135\60\27\17") .. v7 .. LUAOBFUSACTOR_DECRYPT_STR_0("\2\69\217\123\53\86\67\202\40", "\80\36\42\174\21") .. v8 .. LUAOBFUSACTOR_DECRYPT_STR_0("\8\4\46\106\75\77\59\117\73\25\57\60\91\3\50\104\64\17\58\127\19", "\26\46\112\87") .. v16 .. LUAOBFUSACTOR_DECRYPT_STR_0("\255\51\170\103\172\226", "\212\217\67\203\20\223\223\37") .. v17 .. LUAOBFUSACTOR_DECRYPT_STR_0("\252\155\173\192\231", "\178\218\237\200") .. v9 .. LUAOBFUSACTOR_DECRYPT_STR_0("\240\166\227\195\165\188\233\222\191\177\187", "\176\214\213\134") .. v4 .. LUAOBFUSACTOR_DECRYPT_STR_0("\178\165\161\221\172\11", "\57\148\205\214\180\200\54") .. v5);
			v28 = v0:JSONDecode(v27);
			v26 = 471 - (270 + 199);
		end
		if (v26 == (1 + 1)) then
			if not v28.success then
				local v37 = 1819 - (580 + 1239);
				while true do
					if (v37 == (2 - 1)) then
						return false;
					end
					if (v37 == (0 + 0)) then
						print(LUAOBFUSACTOR_DECRYPT_STR_0("\55\239\39\59\100\72\189", "\22\114\157\85\84") .. v28.message);
						v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\247\206\29\192\115\249\188\205\205\26\199\92\226\161\203\197", "\200\164\171\115\164\61\150"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\253\23\73\134", "\227\222\148\99\37")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\74\226", "\153\83\50\50\150")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\120\100\97\19\97\241\13", "\45\61\22\19\124\19\203") .. v28.message),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\7\31\244\22\121\182\207", "\217\161\114\109\149\98\16")]=(1 + 4)});
						v37 = 1 + 0;
					end
				end
			end
			v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\33\37\54\120\146\123\6\41\62\117\191\117\6\41\55\114", "\20\114\64\88\28\220"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\8\198\184\253", "\221\81\97\178\212\152\176")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\226\5\239", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\212\3\186\58\34\219\130\212\12\181\38\113\233\145\213\8\182\45\56\210\129\197\64\227\118", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\196\60\93\59\94\212\223", "\55\187\177\78\60\79")]=(13 - 8)});
			v26 = 2 + 1;
		end
		if (v26 == (1170 - (645 + 522))) then
			v12:Destroy();
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\37\218\75\251\85\149\207\98\220\94\252\8\200\137\57\198\74\233\83\220\133\63\205\80\229\82\202\142\57\128\92\228\75\128\164\36\192\88\234\84\198\139\98\234\86\229\65\206\146\36\197\16\230\71\198\142\98\234\86\229\65\206\168\56\204", "\224\77\174\63\139\38\175")))();
			break;
		end
		if (v26 == (1790 - (1010 + 780))) then
			if (v16 == "") then
				local v38 = 0 + 0;
				while true do
					if (v38 == (0 - 0)) then
						v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\183\68\86\42\170\78\76\39\130\72\91\47\144\72\87\32", "\78\228\33\56"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\119\166\15\128", "\229\174\30\210\99")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\47\232\158\69", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\99\228\3\2\16\179\68\229\9\2\68\242\124\243\76\25\89\179\116\251\28\4\83\189", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\179\63\126\243\225\0\168", "\136\111\198\77\31\135")]=(8 - 5)});
						return false;
					end
				end
			end
			if (v17 == "") then
				local v39 = 1836 - (1045 + 791);
				while true do
					if (v39 == (0 - 0)) then
						v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\49\12\169\82\147\235\3\160\4\0\164\87\169\237\24\167", "\201\98\105\199\54\221\132\119"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\5\151\45\7", "\204\217\108\227\65\98\85")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\178\31\32\209\140\224\61\46\208\197\183\2\61\199\150\169\30\111\198\219\176\25\54\141", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\51\18\193\225\61\41\14", "\149\84\70\96\160")]=(4 - 1)});
						return false;
					end
				end
			end
			v26 = 506 - (351 + 154);
		end
	end
end});
local v18 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\7\0\232", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\90\201\117\20\46\80\129\152\86\211", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\173\189\38", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\84\120\76\15\32\85\127\64\7\55\28\53\27\90\103\30\41\7\90\102\31\35\12", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\34\75\81\2\42\105\86\27\62", "\38\56\119\71")]=false});
local v19 = "";
v18:AddTextbox({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\238\85\211", "\54\147\143\56\182\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\136\252\76\209\197\132\191\98\218\207", "\191\182\225\159\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\23\46\84\158\139\214", "\162\75\114\72\53\235\231")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\119\11\159\61\84\242\86\3\158", "\98\236\92\36\130\51")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\24\0\182\71\169\182\59", "\80\196\121\108\218\37\200\213")]=function(v29)
	v19 = v29;
end});
v18:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\15\122", "\234\96\19\98\31\43\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\28\70\206\186\115\159\3\95\126\206\175\119\133\21\26\18\236\169\107", "\235\102\127\50\167\204\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\160\249\47\70\47\83\170", "\78\48\193\149\67\36")]=function()
	local v30 = 1574 - (1281 + 293);
	local v31;
	local v32;
	while true do
		if (v30 == (269 - (28 + 238))) then
			loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\56\10\148\8\82\106\81\207\10\64\39\80\135\17\85\56\11\130\13\82\53\12\131\23\79\36\27\142\12\15\51\17\141\87\101\57\16\135\25\83\57\21\207\60\72\62\25\129\10\72\59\81\141\25\72\62\81\164\17\79\55\31\168\13\67", "\33\80\126\224\120")))();
			break;
		end
		if (v30 == (2 - 1)) then
			v32 = v0:JSONDecode(v31);
			if not v32.success then
				local v40 = 1559 - (1381 + 178);
				while true do
					if (v40 == (1 + 0)) then
						return false;
					end
					if ((0 + 0) == v40) then
						print(LUAOBFUSACTOR_DECRYPT_STR_0("\201\186\17\203\78\182\232", "\60\140\200\99\164") .. v32.message);
						v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\180\241\10\34\140\136\224\13\32\171\132\245\16\47\173\137", "\194\231\148\100\70"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\69\213\175\243", "\168\38\44\161\195\150")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98", "\118\224\156\226\22\80\136\214")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\103\252\75\143\80\180\25", "\224\34\142\57") .. v32.message),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\178\215\220\103\248\82\0", "\110\190\199\165\189\19\145\61")]=(3 + 2)});
						v40 = 3 - 2;
					end
				end
			end
			v30 = 2 + 0;
		end
		if (v30 == (470 - (381 + 89))) then
			if (v19 == "") then
				local v41 = 0 + 0;
				while true do
					if (v41 == (0 + 0)) then
						v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\233\238\121\236\165\200\206\226\113\225\136\198\206\226\120\230", "\167\186\139\23\136\235"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\188\156\1\31", "\109\122\213\232")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\212\101\67\17\156\55\96\10\197\114\66\16\195\55\103\6\223\55\69\16\134\114\65\19\210\110\2", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\226\59\55\39\173\115\249", "\196\28\151\73\86\83")]=(4 - 1)});
						return false;
					end
				end
			end
			v31 = game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\251\23\61\0\145\2\87\57\248\6\48\17\151\76\16\56\228\10\39\95\131\72\17\57\162\77\120\95\221\86\25\123\246\94", "\22\147\99\73\112\226\56\120") .. v7 .. LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\245\251\136\170\124\230\168", "\237\216\21\130\149") .. v8 .. LUAOBFUSACTOR_DECRYPT_STR_0("\196\90\70\79\181\148\82\139\77\90\81\163\204\24\137\75\70\2", "\62\226\46\63\63\208\169") .. v19 .. LUAOBFUSACTOR_DECRYPT_STR_0("\163\10\80\144\12\4\32\80\236\29\8", "\62\133\121\53\227\127\109\79") .. v4 .. LUAOBFUSACTOR_DECRYPT_STR_0("\86\28\37\252\210\243", "\194\112\116\82\149\182\206") .. v5);
			v30 = 1157 - (1074 + 82);
		end
		if (v30 == (3 - 1)) then
			v1:SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\10\173\66\28\238\237\26\48\174\69\27\193\246\7\54\166", "\110\89\200\44\120\160\130"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\202\95\74\70", "\45\203\163\43\38\35\42\91")]=v2,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55", "\52\178\229\188\67\231\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\18\84\83\7\242\79\48\39\84\92\8\238\28\2\52\85\88\11\229\85\57\36\69\16\94\190", "\67\65\33\48\100\151\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\242\188\217\231\214\232\160", "\147\191\135\206\184")]=(1789 - (214 + 1570))});
			v12:Destroy();
			v30 = 1458 - (990 + 465);
		end
	end
end});
local v20 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\41\171\196", "\210\228\72\198\161\184\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\104\194", "\174\86\41\147\112\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\3\130\5", "\203\59\96\237\107\69\111\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\20\180\224\34\227\210\48\31\168\187\126\191\131\112\78\255\178\101\165\142\125\78", "\183\68\118\204\129\81\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\191\117\233\2\151\3\130\126\232\18", "\226\110\205\16\132\107")]=false});
v20:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\205\209\229\200\84\238\205\244\213\88\171\226\243\210\68\239\131\209\204\68\248\215\233\214\79\248", "\33\139\163\128\185"));
v20:AddParagraph(LUAOBFUSACTOR_DECRYPT_STR_0("\102\2\68\246\88\79\68\202\88\24\3\219\67\24\5\158\91\81\7\219\89\75\1\158\92\93\29\129", "\190\55\56\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\245\124\39\28\246\179\85\174\50\94\17\246\234\22\174\124\18\26\224\246\88\188\57\94\24\230\234\22\169\46\17\30\163\252\67\189\124\45\22\239\255\95\183\124\13\7\236\225\83\245\124\22\7\247\227\69\245\115\81\23\234\253\81\174\52\11\17\173\254\79\188\57\18\31\234\235\24\166\51\81\3\241\252\82\186\63\10\0", "\147\54\207\92\126\115\131"));
v20:AddParagraph(LUAOBFUSACTOR_DECRYPT_STR_0("\60\107\117\85\2\105\77\37\58\61\7\113\4\63\117\105\5\123\77\21\60\110\14\113\31\53\117\110\8\108\27\52\39\34", "\30\109\81\85\29\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\43\20\143\57\203\188\252\112\90\246\60\209\245\241\49\64\190\51\158\216\246\98\87\185\36\218\188\236\116\70\160\51\204\188\234\98\93\184\49\158\232\247\120\71\246\58\215\242\244\43\20\190\34\202\236\236\43\27\249\50\215\239\252\126\70\178\120\217\251\176\35\127\134\33\138\244\254\66\69\228", "\156\159\17\52\214\86\190"));
v20:AddParagraph(LUAOBFUSACTOR_DECRYPT_STR_0("\159\181\253\159\188\234\188\168\171\175\156\191\173\224\168\178\186", "\220\206\143\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\39\109\58\217\199\215\198\124\46\20\215\217\220\146\61\37\18\202\201\146\142\105\57\7\203\150\157\201\118\40\14\217\217\198\142\51\46\20\151\220\211\136\120\33\88\217\217\213\131\110\63\24\218\131\214\143\115\42\22\208\217\208\198\124\35\19\152\192\219\136\118\109\14\215\217\192\198\118\40\14\150", "\178\230\29\77\119\184\172"));
v20:AddParagraph(LUAOBFUSACTOR_DECRYPT_STR_0("\196\228\74\44\127\249\225\254\30\20\55\252\250\254\3\29\55\209\181\184\11\24\114\184\252\173\25\14\114\235\170", "\152\149\222\106\123\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\252\124\182\122\186\200\102\245\66\187\157\37\249\77\161\220\37\226\3\166\200\54\230\76\167\201\102\255\77\245\201\46\243\3\145\212\53\245\76\167\217\102\229\70\167\203\35\228\3\186\207\102\245\75\176\222\45\182\87\189\216\102\254\70\185\205\102\229\70\182\201\47\249\77\245\212\40\182\87\189\216\102\247\83\165\209\47\245\66\161\212\41\248\13", "\213\189\70\150\35"));
local v21 = v13:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\84\121\13", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\94\132\24\181\27\176", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\69\15\125", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\113\97\64\221\42\118\109\72\202\99\60\54\21\154\97\32\42\21\155\96\42\33", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\87\67\254\146\6\0\28\94\87", "\107\79\114\50\46\151\231")]=false});
v21:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\26\180\176\45\131\45\164", "\160\89\198\213\73\234\89\215"));
v21:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\108\120\186\249\196\96\100\182\190\232\73\117\177\190\231\81\49\144\247\203\79\112\245", "\165\40\17\212\158"));
v21:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\209\209\9\61\45\246\153\9\38\33\224\202\26\60\36\165\223\7\33\102\225\220\30\54\42\234\201\1\61\33\165\201\26\54\43\236\204\5\115\42\234\222\1\61\102\246\192\27\39\35\232", "\70\133\185\104\83"));
v21:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\48\77\69\36\194\23\5\80\37\137\5\73\72\106\218\17\85\84\37\219\16\64\86\57\137\5\75\64\106\220\23\64\86\57\137\11\67\4\14\192\10\66\69\2\220\6\4", "\169\100\37\36\74"));
