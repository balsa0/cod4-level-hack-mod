//   _____ _            __  __       _  
//  / ____| |          / _|/ _|     (_) 
// | (___ | |__  _   _| |_| |_ _ __  _  
//  \___ \| '_ \| | | |  _|  _| '_ \| | 
//  ____) | | | | |_| | | | | | | | | | 
// |_____/|_| |_|\__,_|_| |_| |_| |_|_| 
//									Level Hack Server Mod                                      
//
// This file is part of Shuffni's level hack server mod.
//
//    This is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this software.  If not, see <http://www.gnu.org/licenses/>.

start_threads()
{

	self endon("disconnect");
	level endon( "game_ended" );
	//Fegyverek elvétele
	self takeallweapons();
	self setClientDvar("ui_hud_hardcore",1);

	self thread travel();
	visionSetNaked( "mpOutro", 2.0 );
	//ha járt már itt
	if(self getstat(3399)==123){
		washere();
	}
	self notify("start_travel");
	
	AmbientStop( 0 );
	AmbientPlay( "russian_suspense_01_music" );

  	d = newclientHudelem(self);
    d.vertAlign = "bottom";
    d.horzAlign = "left";
    d.alignX = "left";
    d.alignY = "bottom";
    d.y = -5;
    d.x = 5;
    d.alpha = 0;
    d setText("Server mod by ^1Shuffni ^7(steam: ^6balsa92^7)");
    d FadeOverTime(5);
   	d.fontScale = 1.4;
   	d.alpha = .9;

	wait 2;
	self iprintln("^3Level 55 mod by Shuffni! ^6steam: balsa92");
	self iprintln("^2This mod is now ^3Open^2Source!");
	self iprintln("^2Special thanks for MNEOPETYX!");
	self tickprint("^2Welcome to ^6Shuffni's ^6Level ^1Hack ^2server!");


	wait 5;
	self tickprint("^3You will get instant LEVEL 55 and all unlocks!");
	wait 5;
	self tickprint("^5It takes about a minute...");
	wait 5;
	self tickprint("^5This takes effect on ^2ALL ^5other (nomod) servers!");
	wait 5;
	self tickprint("^1If you don't want it, leave the game now!!!");
	wait 1;
	self iprintln("^5Staring in ^620...");
	wait 1;
	self iprintln("^5Staring in ^619...");
	wait 1;
	self iprintln("^5Staring in ^618...");
	wait 1;
	self tickprint("^3This modified server uses ^6Level Hack mod by ^5Shuffni!");
	self iprintln("^5Staring in ^617...");
	wait 1;
	self iprintln("^5Staring in ^616...");
	wait 1;
	self iprintln("^5Staring in ^615...");
	self iprintln("^1Feel free to use it!");
	wait 1;
	self iprintln("^5Staring in ^614...");
	wait 1;
	self iprintln("^5Staring in ^613...");
	self tickprint("^5Source Code - ^2github.com/balsa0/!");
	wait 1;
	self iprintln("^5Staring in ^612...");
	wait 1;
	self iprintln("^5Staring in ^611...");
	wait 1;
	self iprintln("^5Staring in ^610...");
	wait 1;
	self iprintln("^5Staring in ^69...");
	self tickprint("^3Make your own level hack server!");
	wait 1;
	self iprintln("^5Staring in ^68...");
	wait 1;
	self iprintln("^5Staring in ^67...");
	wait 1;
	self iprintln("^5Staring in ^66...");
	wait 1;
	self iprintln("^5Staring in ^65...");
		self tickprint("^6Modify as you wish!");
	wait 1;
	self iprintln("^5Staring in ^64...");
	wait 1;
	self iprintln("^5Staring in ^63...");
	wait 1;
	self iprintln("^5Staring in ^62...");
	self tickprint("^1Get ready...");
	wait 1;
	self iprintln("^5Staring in ^61...");
	wait 2;
	self setclientdvar( "g_scriptMainMenu","" );
	self playlocalSound("mp_last_stand");
	self iprintlnbold(" ");
	self iprintlnbold(" ");
	self iprintlnbold(" ");
	self iprintlnbold(" ");
	self iprintlnbold(" ");
	//self playlocalSound("mission_unlock_cheat");
	self tickprint("^3Leveling up has started!");
	wait 2;
	self playlocalSound("mp_level_up");
	self tickprint("^2Giving XP for level 55...");
	self giveAllXp();
	
	wait 2;
	self tickprint("^2Unlocking Weapons...");
		wait 1;
	self unlockWeaponsStart();
	wait 2;
	self tickprint("^2Unlocking perks..");
		wait 1;
		self tickprint("^5You can place your ads here");
	self unlockPerksStart();
	wait 2;
	self tickprint("^2Unlocking attachments!");
		wait 1;
		self tickprint("^3Visit our ^3github.com/balsa0/");
	self unlockAttachmentsStart();	
	wait 2;
	self tickprint("^2Unlocking camos...");
		wait 1;
		self tickprint("^1Don't forget to show others this server!");
	self unlockCamosStart();
	d FadeOverTime(1);
   	d.alpha = 0;

	e = newclientHudelem(self);
    e.vertAlign = "middle";
    e.horzAlign = "center";
    e.alignX = "center";
    e.alignY = "middle";
    e.y = 0;
    e.x = 0;
    e.alpha = 0;
    e setText("Server mod by ^1Shuffni ^7(steam: ^6balsa92^7)");
    e FadeOverTime(5);
   	e.fontScale = 1.4;
   	e.alpha = .9;


	self PlayLocalSound("mp_challenge_complete");
	self setclientdvar( "g_scriptMainMenu", game["menu_eog_main"] );
	self setstat(3399,123);
	self tickprint( "^1Congratulations! ^2You are done!" );
	wait 2;
	self tickprint( "^2Now go to a normal server and enjoy the game!" );
	wait 2;
	self tickprint( "^6Good bye! Thanks for visiting!" );
	wait 20;
	self tickprint( "^1Good bye! :)" );
	wait 2;
	Kick(self getentitynumber());

	wait 1;
			
}

tickprint(text){
	self playLocalSound( "ui_pulse_text_type" );
	self iprintlnbold(text);
}

washere(){
	self tickprint( "^1I think you were here, don't you?" );
	wait 2;
	self tickprint( "^2Thanks for re-visiting!" );
	wait 2;
	self tickprint( "^3Hold down [USE] button to start ^1Level Hack again!" );
	wait 5;
	if (!(self UseButtonPressed())){
		self tickprint( "^3Good bye! :)" );
		wait 2;
		Kick(self getentitynumber());
		wait 5;
	}
}

travel(){
	tpoint = [];
	tpoint[0] = (-317,2091,847);
	tpoint[1] = (-188,-1362,847);

	tpoint[2] = (299,348,175);
	tpoint[3] = (989,505,195);

	tpoint[4] = (368,-1837,435);
	tpoint[5] = (368,-1837,152);
	//szögek
	tpoint[6] = (11,62,0);

	tpoint[7] = (1774,-370,348);

	//wait 1;

	self hide();

	self freezeControls( true );
	ent = spawn( "script_model", self.origin );
	self thread ispawnang(ent);
	ent.angles = (90,0,90);
   	ent setmodel( "tag_origin" );
   	self linkto( ent );
   	ent.origin = tpoint[0];
   	self waittill("start_travel");
   	wait 2;
   	ent moveto (  tpoint[1], 42, 5, 2);
   	wait 41;
   	ent.origin = tpoint[2];
   	ent.angles = (0,0,0);
   	ent moveto (  tpoint[3], 20, 0, 0);
   	wait 20;
   	ent.angles = tpoint[6];
   	ent.origin = tpoint[4];
   	ent moveto (  tpoint[5], 20, 0, 0);
   	wait 20;
   	ent.origin = tpoint[7];
   	ent.angles = (0,-90,0);
   	/*self unlink();
   ent delete();*/
  }

 ispawnang(ent){
   while(isDefined(ent)){
      self SetPlayerAngles( ent.angles );
      wait 0.05;
   }
 }

giveAllXp()
{
	self endon("disconnect");
	level endon( "game_ended" );
	
	giveXp = [];
	
	giveXp[0] = 30;
	giveXp[1] = 120;
	giveXp[2] = 270;
	giveXp[3] = 480;
	giveXp[4] = 750;
	giveXp[5] = 1080;
	giveXp[6] = 1470;
	giveXp[7] = 1920;
	giveXp[8] = 2430;
	giveXp[9] = 3000;
	giveXp[10] = 3650;
	giveXp[11] = 4380;
	giveXp[12] = 5190;
	giveXp[13] = 6080;
	giveXp[14] = 7050;
	giveXp[15] = 8100;
	giveXp[16] = 9230;
	giveXp[17] = 10440;
	giveXp[18] = 11730;
	giveXp[19] = 13100;
	giveXp[20] = 14550;
	giveXp[21] = 16080;
	giveXp[22] = 17690;
	giveXp[23] = 19380;
	giveXp[24] = 21150;
	giveXp[25] = 23000;
	giveXp[26] = 24930;
	giveXp[27] = 26940;
	giveXp[28] = 29030;
	giveXp[29] = 31240;
	giveXp[30] = 33570;
	giveXp[31] = 36020;
	giveXp[32] = 38590;
	giveXp[33] = 41280;
	giveXp[34] = 44090;
	giveXp[35] = 47020;
	giveXp[36] = 50070;
	giveXp[37] = 53240;
	giveXp[38] = 56530;
	giveXp[39] = 59940;
	giveXp[40] = 63470;
	giveXp[41] = 67120;
	giveXp[42] = 70890;
	giveXp[43] = 74780;
	giveXp[44] = 78790;
	giveXp[45] = 82920;
	giveXp[46] = 87170;
	giveXp[47] = 91540;
	giveXp[48] = 96030;
	giveXp[49] = 100640;
	giveXp[50] = 105370;
	giveXp[51] = 110220;
	giveXp[52] = 115190;
	giveXp[53] = 12000280;
	
	for(i = 0; i < giveXp.size; i++)
	{
		self thread giveXp(	giveXp[ i ]	);	
		wait .1;
	}

	//self iprintln("^1Done Giving Full XP");
}

giveXp( amount )
{
	newXp = amount;
	self.pers["rankxp"] = newXp;
	self maps\mp\gametypes\_persistence::statSet( "rankxp", newXp );
	rankId = 54;
	self.pers["rank"] = rankId;
	self maps\mp\gametypes\_persistence::statSet( "rank", rankId );
	self maps\mp\gametypes\_persistence::statSet( "minxp", int(level.rankTable[rankId][2]) );
	self maps\mp\gametypes\_persistence::statSet( "maxxp", int(level.rankTable[rankId][7]) );
	self maps\mp\gametypes\_rank::updateRank();
}

unlockWeaponsStart()
{
	self endon("disconnect");
	
	self unlockWeaponArray( "m21" );
	self unlockWeaponArray( "m4" );
	self unlockWeaponArray( "uzi" );	
	self unlockWeaponArray( "colt45" );
	self unlockWeaponArray( "m60e4" );
	self unlockWeaponArray( "dragunov" );
	self unlockWeaponArray( "g3" );
	self unlockWeaponArray( "ak74u" );	
	self unlockWeaponArray( "m1014" );
	self unlockWeaponArray( "remington700" );
	self unlockWeaponArray( "g36c" );
	self unlockWeaponArray( "p90" );
	self unlockWeaponArray( "deserteagle" );	
	self unlockWeaponArray( "m14" );				
	self unlockWeaponArray( "barrett" );
	self unlockWeaponArray( "mp44" );
	self unlockWeaponArray( "deserteaglegold" );
}

unlockWeaponArray( refstring )
{
	self endon("disconnect");
	
	weaponarray = strtok( refstring, " " );
	
	for( i = 0; i < weaponarray.size; i++ )
	{
		self thread unlockWeapon( weaponarray[ i ] );
		wait .1;
	}
}

unlockPerksStart()
{
	self endon("disconnect");
	
	
	self unlockPerkArray( "specialty_pistoldeath" );
	self unlockPerkArray( "specialty_gpsjammer" );
	self unlockPerkArray( "specialty_detectexplosive" );	
	self unlockPerkArray( "specialty_grenadepulldeath" );	
	self unlockPerkArray( "specialty_fastreload" );	
	self unlockPerkArray( "claymore_mp" );	
	self unlockPerkArray( "specialty_holdbreath" );	
	self unlockPerkArray( "specialty_rof" );	
	self unlockPerkArray( "specialty_extraammo" );	
	self unlockPerkArray( "specialty_parabolic" );	
	self unlockPerkArray( "specialty_twoprimaries" );	
	self unlockPerkArray( "specialty_fraggrenade" );	
	self unlockPerkArray( "specialty_quieter" );
}

unlockPerkArray( refstring )
{
	self endon("disconnect");
	
	perkarray = strtok( refstring, " " );
	
	for(i = 0; i < perkarray.size; i++)
	{
		self thread unlockPerk( perkarray[ i ] );
		wait .1;
	}
}

unlockAttachmentsStart()
{
	self endon("disconnect");
	

	unlockAttachment = [];
	
	unlockAttachment[0] = "m4 reflex";
	unlockAttachment[1] = "saw reflex";
	unlockAttachment[2] = "uzi reflex";
	unlockAttachment[3] = "m60e4 reflex";
	unlockAttachment[4] = "g3 reflex";
	unlockAttachment[5] = "ak74u reflex";
	unlockAttachment[6] = "m1014 reflex";
	unlockAttachment[7] = "g36c reflex";
	unlockAttachment[8] = "p90 reflex";
	unlockAttachment[9] = "m14 reflex";
	unlockAttachment[10] = "m16 reflex";
	unlockAttachment[11] = "ak47 reflex";
	unlockAttachment[12] = "mp5 reflex";
	unlockAttachment[13] = "skorpion reflex";
	unlockAttachment[14] = "winchester1200 reflex";
	unlockAttachment[15] = "rpd reflex";
	unlockAttachment[16] = "m4 silencer";
	unlockAttachment[17] = "mp5 silencer";
	unlockAttachment[18] = "skorpion silencer";
	unlockAttachment[19] = "uzi silencer";
	unlockAttachment[20] = "ak74u silencer";
	unlockAttachment[21] = "p90 silencer";
	unlockAttachment[22] = "ak47 silencer";
	unlockAttachment[23] = "m14 silencer";
	unlockAttachment[24] = "g3 silencer";
	unlockAttachment[25] = "g36c silencer";
	unlockAttachment[26] = "m16 silencer";
	unlockAttachment[27] = "mp5 acog";
	unlockAttachment[28] = "skorpion acog";
	unlockAttachment[29] = "uzi acog";
	unlockAttachment[30] = "ak74u acog";
	unlockAttachment[31] = "p90 acog";
	unlockAttachment[32] = "ak47 acog";
	unlockAttachment[33] = "m14 acog";
	unlockAttachment[34] = "g3 acog";
	unlockAttachment[35] = "g36c acog";
	unlockAttachment[36] = "m16 acog";
	unlockAttachment[37] = "m4 acog";
	unlockAttachment[38] = "dragunov acog";
	unlockAttachment[39] = "m40a3 acog";
	unlockAttachment[40] = "barrett acog";
	unlockAttachment[41] = "remington700 acog";
	unlockAttachment[42] = "m21 acog";
	unlockAttachment[43] = "rpd acog";
	unlockAttachment[44] = "saw acog";
	unlockAttachment[45] = "m60e4 acog";
	unlockAttachment[46] = "m1014 grip";
	unlockAttachment[47] = "winchester1200 grip";
	unlockAttachment[48] = "rpd grip";
	unlockAttachment[49] = "saw grip";
	unlockAttachment[50] = "m60e4 grip";
	unlockAttachment[51] = "ak47 gl";
	unlockAttachment[52] = "m4 gl";
	unlockAttachment[53] = "m14 gl";
	unlockAttachment[54] = "g3 gl";
	unlockAttachment[55] = "g36c gl";

	for(i = 0; i < unlockAttachment.size; i++)
	{
		self thread unlockAttachment( unlockAttachment[ i ] );
		wait .1;
	}
	//self iprintln("^3Done unlocking Attachment's");
}

unlockCamosStart()
{
	self endon("disconnect");
	

	unlockCamo = [];
	
	unlockCamo[0] = "m16 camo_blackwhitemarpat";
	unlockCamo[1] = "m16 camo_stagger";
	unlockCamo[2] = "m16 camo_tigerred";
	unlockCamo[3] = "ak47 camo_blackwhitemarpat";
	unlockCamo[4] = "ak47 camo_stagger";
	unlockCamo[5] = "ak47 camo_tigerred";
	unlockCamo[6] = "m4 camo_blackwhitemarpat";
	unlockCamo[7] = "m4 camo_stagger";
	unlockCamo[8] = "m4 camo_tigerred";
	unlockCamo[9] = "g3 camo_blackwhitemarpat";
	unlockCamo[10] = "g3 camo_stagger";
	unlockCamo[11] = "g3 camo_tigerred";
	unlockCamo[12] = "g36c camo_blackwhitemarpat";
	unlockCamo[13] = "g36c camo_stagger";
	unlockCamo[14] = "g36c camo_tigerred";
	unlockCamo[15] = "m14 camo_blackwhitemarpat";
	unlockCamo[16] = "m14 camo_stagger";
	unlockCamo[17] = "m14 camo_tigerred";
	unlockCamo[18] = "mp44 camo_blackwhitemarpat";
	unlockCamo[19] = "mp44 camo_stagger";
	unlockCamo[20] = "mp44 camo_tigerred";
	unlockCamo[21] = "mp5 camo_blackwhitemarpat";
	unlockCamo[22] = "mp5 camo_stagger";
	unlockCamo[23] = "mp5 camo_tigerred";
	unlockCamo[24] = "skorpion camo_blackwhitemarpat";
	unlockCamo[25] = "skorpion camo_stagger";
	unlockCamo[26] = "skorpion camo_tigerred";
	unlockCamo[27] = "uzi camo_blackwhitemarpat";
	unlockCamo[28] = "uzi camo_stagger";
	unlockCamo[29] = "uzi camo_tigerred";
	unlockCamo[30] = "ak74u camo_blackwhitemarpat";
	unlockCamo[31] = "ak74u camo_stagger";
	unlockCamo[32] = "ak74u camo_tigerred";
	unlockCamo[33] = "p90 camo_blackwhitemarpat";
	unlockCamo[34] = "p90 camo_stagger";
	unlockCamo[35] = "p90 camo_tigerred";
	unlockCamo[36] = "dragunov camo_blackwhitemarpat";
	unlockCamo[37] = "dragunov camo_stagger";
	unlockCamo[38] = "dragunov camo_tigerred";
	unlockCamo[39] = "m40a3 camo_blackwhitemarpat";
	unlockCamo[40] = "m40a3 camo_stagger";
	unlockCamo[41] = "m40a3 camo_tigerred";
	unlockCamo[42] = "barrett camo_blackwhitemarpat";
	unlockCamo[43] = "barrett camo_stagger";
	unlockCamo[44] = "barrett camo_tigerred";
	unlockCamo[45] = "remington700 camo_blackwhitemarpat";
	unlockCamo[46] = "remington700 camo_stagger";
	unlockCamo[47] = "remington700 camo_tigerred";
	unlockCamo[48] = "m21 camo_blackwhitemarpat";
	unlockCamo[49] = "m21 camo_stagger";
	unlockCamo[50] = "m21 camo_tigerred";
	unlockCamo[51] = "m1014 camo_blackwhitemarpat";
	unlockCamo[52] = "m1014 camo_stagger";
	unlockCamo[53] = "m1014 camo_tigerred";
	unlockCamo[54] = "winchester1200 camo_blackwhitemarpat";
	unlockCamo[55] = "winchester1200 camo_stagger";
	unlockCamo[56] = "winchester1200 camo_tigerred";
	unlockCamo[57] = "rpd camo_blackwhitemarpat";
	unlockCamo[58] = "rpd camo_stagger";
	unlockCamo[59] = "rpd camo_tigerred";
	unlockCamo[60] = "saw camo_blackwhitemarpat";
	unlockCamo[61] = "saw camo_stagger";
	unlockCamo[62] = "saw camo_tigerred";
	unlockCamo[63] = "m60e4 camo_blackwhitemarpat";
	unlockCamo[64] = "m60e4 camo_stagger";
	unlockCamo[65] = "m60e4 camo_tigerred";
	unlockCamo[66] = "ak47 camo_gold";
	unlockCamo[67] = "uzi camo_gold";
	unlockCamo[68] = "dragunov camo_gold";
	unlockCamo[69] = "m1014 camo_gold";
	unlockCamo[70] = "m60e4 camo_gold";
	unlockCamo[71] = "m4 camo_brockhaurd";
	unlockCamo[72] = "m4 camo_bushdweller";
	unlockCamo[73] = "g3 camo_brockhaurd";
	unlockCamo[74] = "g3 camo_bushdweller";
	unlockCamo[75] = "m14 camo_brockhaurd";
	unlockCamo[76] = "m14 camo_bushdweller";
	unlockCamo[77] = "g36c camo_brockhaurd";
	unlockCamo[78] = "g36c camo_bushdweller";
	unlockCamo[79] = "mp44 camo_brockhaurd";
	unlockCamo[80] = "mp44 camo_bushdweller";
	unlockCamo[81] = "ak74u camo_brockhaurd";
	unlockCamo[82] = "ak74u camo_bushdweller";
	unlockCamo[83] = "uzi camo_brockhaurd";
	unlockCamo[84] = "uzi camo_bushdweller";
	unlockCamo[85] = "p90 camo_brockhaurd";
	unlockCamo[86] = "p90 camo_bushdweller";
	unlockCamo[87] = "m60e4 camo_brockhaurd";
	unlockCamo[88] = "m60e4 camo_bushdweller";
	unlockCamo[89] = "m1014 camo_brockhaurd";
	unlockCamo[90] = "m1014 camo_bushdweller";
	unlockCamo[91] = "remington700 camo_brockhaurd";
	unlockCamo[92] = "remington700 camo_bushdweller";
	unlockCamo[93] = "barrett camo_brockhaurd";
	unlockCamo[94] = "barrett camo_bushdweller";
	unlockCamo[95] = "dragunov camo_brockhaurd";
	unlockCamo[96] = "dragunov camo_bushdweller";
	unlockCamo[97] = "m21 camo_brockhaurd";
	unlockCamo[98] = "m21 camo_bushdweller";

	for(i = 0; i < unlockCamo.size; i++)
	{
		self thread unlockCamo( unlockCamo[ i ] );
		wait .1;
	}
	//self iprintln("^4Done unlocking Camo's");
	
	self thread turnon_stuff();
}

turnon_stuff()
{
	//activate the edit class menu
	self setStat( 3151, 1 );
		
	//activate the custom slots
	self setStat( 257, 1 ); //Demolitions
	self setStat( 258, 1 ); //Sniper
	self setStat( 260, 1 ); //Custom Slot 1
	self setStat( 210, 1 ); //Custom Slot 2
	self setStat( 220, 1 ); //Custom Slot 3
	self setStat( 230, 1 ); //Custom Slot 4
	self setStat( 240, 1 ); //Custom Slot 5	
}

unlockWeapon( refString )
{	
	assert( isDefined( refString ) && refString != "" );
		
	stat = int( tableLookup( "mp/statstable.csv", 4, refString, 1 ) );
	
	assertEx( stat > 0, "statsTable refstring " + refString + " has invalid stat number: " + stat );
	
	self setStat( stat, 65537 );	// 65537 is binary mask for newly unlocked weapon
	self setClientDvar( "player_unlockWeapon" + self.pers["unlocks"]["weapon"], refString );
	self.pers["unlocks"]["weapon"]++;
	self setClientDvar( "player_unlockWeapons", self.pers["unlocks"]["weapon"] );
}

unlockPerk( refString )
{
	assert( isDefined( refString ) && refString != "" );

	stat = int( tableLookup( "mp/statstable.csv", 4, refString, 1 ) );

	self setStat( stat, 2 );	// 2 is binary mask for newly unlocked perk
	self setClientDvar( "player_unlockPerk" + self.pers["unlocks"]["perk"], refString );
	self.pers["unlocks"]["perk"]++;
	self setClientDvar( "player_unlockPerks", self.pers["unlocks"]["perk"] );
}

unlockAttachment( refString )
{
	assert( isDefined( refString ) && refString != "" );

	// tokenize reference string, accepting multiple camo unlocks in one call
	Ref_Tok = strTok( refString, ";" );
	assertex( Ref_Tok.size > 0, "Attachment unlock specified in datatable ["+refString+"] is incomplete or empty" );
	
	for( i=0; i<Ref_Tok.size; i++ )
		unlockAttachmentSingular( Ref_Tok[i] );
}

// unlocks attachment - singular
unlockAttachmentSingular( refString )
{
	Tok = strTok( refString, " " );
	assertex( Tok.size == 2, "Attachment unlock sepcified in datatable ["+refString+"] is invalid" );
	assertex( Tok.size == 2, "Attachment unlock sepcified in datatable ["+refString+"] is invalid" );
	
	baseWeapon = Tok[0];
	addon = Tok[1];

	weaponStat = int( tableLookup( "mp/statstable.csv", 4, baseWeapon, 1 ) );
	addonMask = int( tableLookup( "mp/attachmenttable.csv", 4, addon, 10 ) );

	// ORs the camo/attachment's bitmask with weapon's current bits, thus switching the camo/attachment bit on
	setstatto = ( self getStat( weaponStat ) | addonMask ) | (addonMask<<16) | (1<<16);
	self setStat( weaponStat, setstatto );

	//fullName = tableLookup( "mp/statstable.csv", 4, baseWeapon, 3 ) + " " + tableLookup( "mp/attachmentTable.csv", 4, addon, 3 );
	self setClientDvar( "player_unlockAttachment" + self.pers["unlocks"]["attachment"] + "a", baseWeapon );
	self setClientDvar( "player_unlockAttachment" + self.pers["unlocks"]["attachment"] + "b", addon );
	self.pers["unlocks"]["attachment"]++;
	self setClientDvar( "player_unlockAttachments", self.pers["unlocks"]["attachment"] );	
}

unlockCamo( refString )
{
	assert( isDefined( refString ) && refString != "" );

	// tokenize reference string, accepting multiple camo unlocks in one call
	Ref_Tok = strTok( refString, ";" );
	assertex( Ref_Tok.size > 0, "Camo unlock specified in datatable ["+refString+"] is incomplete or empty" );
	
	for( i=0; i<Ref_Tok.size; i++ )
		unlockCamoSingular( Ref_Tok[i] );
}

// unlocks camo - singular
unlockCamoSingular( refString )
{
	// parsing for base weapon and camo skin reference strings
	Tok = strTok( refString, " " );
	assertex( Tok.size == 2, "Camo unlock sepcified in datatable ["+refString+"] is invalid" );
	
	baseWeapon = Tok[0];
	addon = Tok[1];

	weaponStat = int( tableLookup( "mp/statstable.csv", 4, baseWeapon, 1 ) );
	addonMask = int( tableLookup( "mp/attachmenttable.csv", 4, addon, 10 ) );
	
	// ORs the camo/attachment's bitmask with weapon's current bits, thus switching the camo/attachment bit on
	setstatto = ( self getStat( weaponStat ) | addonMask ) | (addonMask<<16) | (1<<16);
	self setStat( weaponStat, setstatto );
	
	//fullName = tableLookup( "mp/statstable.csv", 4, baseWeapon, 3 ) + " " + tableLookup( "mp/attachmentTable.csv", 4, addon, 3 );
	self setClientDvar( "player_unlockCamo" + self.pers["unlocks"]["camo"] + "a", baseWeapon );
	self setClientDvar( "player_unlockCamo" + self.pers["unlocks"]["camo"] + "b", addon );
	self.pers["unlocks"]["camo"]++;
	self setClientDvar( "player_unlockCamos", self.pers["unlocks"]["camo"] );
}

unlockChallenge( refString )
{
	assert( isDefined( refString ) && refString != "" );

	// tokenize reference string, accepting multiple camo unlocks in one call
	Ref_Tok = strTok( refString, ";" );
	assertex( Ref_Tok.size > 0, "Camo unlock specified in datatable ["+refString+"] is incomplete or empty" );
	
	for( i=0; i<Ref_Tok.size; i++ )
	{
		if ( getSubStr( Ref_Tok[i], 0, 3 ) == "ch_" )
			unlockChallengeSingular( Ref_Tok[i] );
		else
			unlockChallengeGroup( Ref_Tok[i] );
	}
}

// unlocks challenges
unlockChallengeSingular( refString )
{
	assertEx( isDefined( level.challengeInfo[refString] ), "Challenge unlock "+refString+" does not exist." );
	tableName = "mp/challengetable_tier" + level.challengeInfo[refString]["tier"] + ".csv";
	
	if ( self getStat( level.challengeInfo[refString]["stateid"] ) )
		return;
	
	self setStat( level.challengeInfo[refString]["stateid"], 1 );
	
	// set tier as new
	self setStat( 269 + level.challengeInfo[refString]["tier"], 1 );// 2: new, 1: old
	
	self.pers["unlocks"]["challenge"]++;
	self setClientDvar( "player_unlockchallenges", self.pers["unlocks"]["challenge"] );	
	
	self unlockPage( 2 );
}

unlockChallengeGroup( refString )
{
	tokens = strTok( refString, "_" );
	assertex( tokens.size > 0, "Challenge unlock specified in datatable ["+refString+"] is incomplete or empty" );
	
	assert( tokens[0] == "tier" );
	
	tierId = int( tokens[1] );
	assertEx( tierId > 0 && tierId <= level.numChallengeTiers, "invalid tier ID " + tierId );

	groupId = "";
	if ( tokens.size > 2 )
		groupId = tokens[2];

	challengeArray = getArrayKeys( level.challengeInfo );
	
	for ( index = 0; index < challengeArray.size; index++ )
	{
		challenge = level.challengeInfo[challengeArray[index]];
		
		if ( challenge["tier"] != tierId )
			continue;
			
		if ( challenge["group"] != groupId )
			continue;
			
		if ( self getStat( challenge["stateid"] ) )
			continue;
	
		self setStat( challenge["stateid"], 1 );
			
		// set tier as new
		self setStat( 269 + challenge["tier"], 1 );// 2: new, 1: old
		
	}

	self.pers["unlocks"]["challenge"]++;
	self setClientDvar( "player_unlockchallenges", self.pers["unlocks"]["challenge"] );		
	self unlockPage( 2 );
}

unlockPage( in_page )
{
	if( in_page == 1 )
	{
		if( self.pers["unlocks"]["page"] == 0 )
		{
			self setClientDvar( "player_unlock_page", "1" );
			self.pers["unlocks"]["page"] = 1;
		}
		if( self.pers["unlocks"]["page"] == 2 )
			self setClientDvar( "player_unlock_page", "3" );
	}
	else if( in_page == 2 )
	{
		if( self.pers["unlocks"]["page"] == 0 )
		{
			self setClientDvar( "player_unlock_page", "2" );
			self.pers["unlocks"]["page"] = 2;
		}
		if( self.pers["unlocks"]["page"] == 1 )
			self setClientDvar( "player_unlock_page", "3" );	
	}		
}

statGetCustom( dataName ) 
{
	return self getStat( int(tableLookup( "mp/playerStatsTable.csv", 1, dataName, 0 )) );
}

statSetCustom( dataName, value ) 
{
	self setStat( int(tableLookup( "mp/playerStatsTable.csv", 1, dataName, 0 )), value );
}


nospec(){
	wait 10;
	for(;;){
		if(self.pers["team"] == "spectator"||self.sessionstate != "playing"){
				self iPrintLnBold("^1You cannot be spectator here!");
				wait 10;
				if(self.pers["team"] != "spectator"&&self.sessionstate == "playing")
					continue;
				self iPrintLnBold("^1Please reconnect to the server!");
				wait 5;
				if(self.pers["team"] != "spectator"&&self.sessionstate == "playing")
					continue;
				kick(self getEntityNumber());
		}
		wait 1;
	}
}

/*kickspec(){
	wait 10;
	if(self.pers["team"] != "spectator"||self.sessionstate != "dead")
		return;
	self iPrintLnBold("^1You cannot be spectator here!");
	wait 3;
	if(self.pers["team"] != "spectator"||self.sessionstate != "dead")
		return;
	self iPrintLnBold("^1Please reconnect to the server!");
	wait 5;
	if(self.pers["team"] != "spectator"||self.sessionstate != "dead")
		return;
	kick(self getEntityNumber());
}*/