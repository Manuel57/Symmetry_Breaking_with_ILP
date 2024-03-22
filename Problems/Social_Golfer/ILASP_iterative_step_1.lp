%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Search Space
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%#modeb(2,weekGEQ(var(player),var(week), var(group))).
#modeb(2,max_week(var(week))).
#modeb(2,maxplayer(var(player))).
#modeb(2,maxgroup(var(group))).
#modeb(2,next_player(var(player),var(player))).
#modeb(2,next_week(var(week),var(week))).
#modeb(2,next_group(var(group),var(group))).
#modeb(2,meets(var(player),var(player), var(week))).
#modeb(2,lessthan(var(week), var(week))).
#modeb(2,lessthan(var(player), var(player))).
#modeb(2,lessthan(var(group), var(group))).
#modeb(2,lessthan(var(week), var(player))).
#modeb(2,lessthan(var(week), var(group))).
#modeb(2,lessthan(var(player), var(group))).
#modeb(2,lessthan(var(player), var(week))).
#modeb(2,lessthan(var(group), var(week))).
#modeb(2,lessthan(var(group), var(player))).
#modeb(2,week(var(week))).
#modeb(2,player(var(player))).
#modeb(2,group(var(group))).
#modeb(2,plays(var(player), var(week), var(group))).

%#max_penalty(30).
