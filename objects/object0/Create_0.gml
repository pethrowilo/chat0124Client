/// @description Insert description here
// You can write your code in this editor
randomize();

global.user = GetRandomName();
global.data = "MYDATA" + GetRandomName() + GetRandomName() + GetRandomName() + "END";

global.sendmap = ds_map_create();
global.sendbuffer = buffer_create(256, buffer_grow, 1);

ds_map_add(global.sendmap, "type", CSEND_TYPE_CHATMESSAGE);
ds_map_add(global.sendmap, "user", global.user);
ds_map_add(global.sendmap, "data", global.data);

ds_map_secure_save_buffer(global.sendmap, global.sendbuffer);

global.serversocket = network_create_socket(network_socket_udp);
if (global.serversocket < 0) { show_debug_message("SOCKET CREATION FAILED"); exit; }
// network_resolve bugs when ip too long
global.serverconnection = network_connect_raw(global.serversocket, "123.148.144.115", 2590);
if (global.serverconnection < 0) { show_debug_message("CONNECTION FAILED"); exit; }
var sent_;
sent_ = network_send_packet(global.serversocket, global.sendbuffer, buffer_get_size(global.sendbuffer));
show_debug_message("SENT: " + string(sent_));