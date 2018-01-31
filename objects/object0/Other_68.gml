/// @description Insert description here
// You can write your code in this editor
var vgtype_ = ds_map_find_value(async_load, "type");
show_debug_message(vgtype_);
var vgid_ = ds_map_find_value(async_load, "id");
show_debug_message(vgid_);
var vgip_ = ds_map_find_value(async_load, "ip");
show_debug_message(vgip_);
var vgport_ = ds_map_find_value(async_load, "port");
show_debug_message(vgport_);

var vgsize_ = 0;
var vgbuffer_ = -1;
if (vgtype_ == network_type_data)
{
	vgsize_ = ds_map_find_value(async_load, "size");
	vgbuffer_ = ds_map_find_value(async_load, "buffer");
	
	show_debug_message("GET DATA:");
	var vgmap_ = ds_map_secure_load_buffer(vgbuffer_);
	//push data
	// **
	show_debug_message(
		string(ds_map_find_value(vgmap_, "type")) + " " +
		string(date_current_datetime()) +
		" (" + ds_map_find_value(vgmap_, "user") + ") [" +
		ds_map_find_value(vgmap_, "data") + "]"
	);
}
