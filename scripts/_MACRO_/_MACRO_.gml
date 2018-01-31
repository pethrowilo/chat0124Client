#macro CSEND_TYPE_PING 1
#macro CSEND_TYPE_LOGIN 9
#macro CSEND_TYPE_CHATMESSAGE 10
#macro CSEND_TYPE_PULLLOG 11
#macro CSEND_TYPE_CHATSYNCH 19
#macro CSEND_TYPE_KEEPALIVE 80
#macro CSEND_TYPE_LOGOUT 99
// ClientLogin(user, userpwhash)
// ClientKeep()
// ClientLogout()
// ClientPing()
// UserChat(message)
// UserSynch()
// UserPull(chatindex)
#macro SSEND_TYPE_UNDEFINED 0 // client undefined
#macro SSEND_TYPE_PING 1 // client 1
#macro SSEND_TYPE_REGISTERED 9 // client 9 successful 
#macro SSEND_TYPE_CHATLOG 10 // client 10/11
#macro SSEND_TYPE_CHATBLOCK 19 // client 19
#macro SSEND_TYPE_BOOT 99 // client 99
// ServerRegisterUser(user, userpwhash, ip, port)
// ServerKeepUser(user, ip, port) // no respond
// ServerBootUser(user, ip, port)
// ServerRespond(user, ip, port)
// ChatSendBlock(user, ip, port, block)
// ChatSendLog(user, ip, port, log)