var STR = "0123456789ABCDEF";

var rt = "";
for (var i = 0; i < 8; ++i)
{
	rt += string_char_at(STR, irandom(7) + 1);
}

return rt;