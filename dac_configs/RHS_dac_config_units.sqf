//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// by SavageCDN and Przemro
//------------------------------------------------------------------------------------------------- 
// OPFOR RHS Russians								@rhs_afrf3
// Russian Motor Rifle Troops (MSV)	Моторизо́ванные стрелко́вые войска, МСВ		rhs_faction_msv
  case 0:
  {
    _Unit_Pool_S = [
		"rhs_msv_driver_armored", "rhs_msv_combatcrew", "rhs_msv_sergeant",
		"rhs_msv_rifleman",
		"rhs_msv_grenadier",
		"rhs_msv_at",						//grenadier RPG
		"rhs_msv_strelok_rpg_assist",		//grenadier RPG assistant
		"rhs_msv_aa",
		"rhs_msv_efreitor",
		"rhs_msv_engineer",
		"rhs_msv_machinegunner",
		"rhs_msv_machinegunner_assistant",
		"rhs_msv_marksman",
		"rhs_msv_medic",
		"rhs_msv_LAT",						//rifleman RPG-26
		"rhs_msv_RShG2"						//rifleman RShG2
		
	];
    _Unit_Pool_V = [
		"rhs_tigr_msv",						//MRAP	
		"RHS_UAZ_MSV_01",
		"rhs_uaz_open_MSV_01",
		"RHS_BM21_MSV_01",					//rocket truck
		"rhs_gaz66_msv",
		"rhs_gaz66o_msv",
		"rhs_gaz66_r142_msv",				//radio truck
		"rhs_gaz66_ap2_msv",				//ambulance
		"RHS_Ural_MSV_01",
		"rhs_gaz66_repair_msv",
		"RHS_Ural_Fuel_MSV_01"		
	];
    _Unit_Pool_T = [
		"rhs_btr60_msv",
		"rhs_btr70_msv",
		"rhs_btr80_msv",
		"rhs_btr80a_msv",
		"rhs_bmp1_msv",
		"rhs_bmp1d_msv",
		"rhs_bmp1k_msv",
		"rhs_bmp1p_msv",
		"rhs_brm1k_msv",					//para
		"rhs_bmp2_msv",
		"rhs_bmp2e_msv",
		"rhs_bmp2d_msv",
		"rhs_bmp2k_msv",
		"rhs_prp3_msv"						
	];
    _Unit_Pool_A = [];
  };
//------------------------------------------------------------------------------------------------- 
// BLUFOR RHS Americans							??
// US Army (Woodland)							rhs_faction_usarmy_wd
  case 1:
  {
    _Unit_Pool_S = [
		"rhsusf_army_ocp_combatcrewman", "rhsusf_army_ocp_helipilot", "rhsusf_army_ocp_teamleader",
		"rhsusf_army_ocp_rifleman",
		"rhsusf_army_ocp_riflemanl",		//light
		"rhsusf_army_ocp_riflemanat",		//M136
		"rhsusf_army_ocp_grenadier",		//grenadier
		"rhsusf_army_ocp_marksman",
		"rhsusf_army_ocp_medic",
		"rhsusf_army_ocp_machinegunner",
		"rhsusf_army_ocp_machinegunnera",	//MG assistant
		"rhsusf_army_ocp_engineer",			
		"rhsusf_army_ocp_autorifleman",
		"rhsusf_army_ocp_aa",				//Stinger
		"rhsusf_army_ocp_javelin"			//Javelin
		
	];
    _Unit_Pool_V = [								
		"rhsusf_m998_w_2dr_fulltop",
		"rhsusf_m998_w_2dr_halftop",
		"rhsusf_m998_w_2dr",					
		"rhsusf_m998_w_4dr_fulltop",
		"rhsusf_m998_w_4dr_halftop",
		"rhsusf_m998_w_4dr",
		"rhsusf_m113_usarmy",
		"rhsusf_m1025_w"
	];
    _Unit_Pool_T = [
		"RHS_M6_wd",
		"rhsusf_m109_usarmy",
		"RHS_M2A2_BUSKI_WD",		
		"RHS_M2A3_BUSKI_wd",
		"RHS_M2A3_BUSKIII_wd",
		"RHS_M2A2_wd",
		"RHS_M2A3_wd",
		"rhsusf_m1a1aimwd_usarmy",					
		"rhsusf_m1a1aim_tuski_wd",
		"rhsusf_m1a2sep1wd_usarmy",
		"rhsusf_m1a2sep1tuskiwd_usarmy"
	];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR RHS
// Russians VDV
  case 2:
  {
    _Unit_Pool_S = [
		"rhs_vdv_combatcrew", "rhs_pilot", "rhs_vdv_sergeant",
		"rhs_vdv_RShG2",
		"rhs_vdv_LAT",
		"rhs_vdv_rifleman",
		"rhs_vdv_medic",
		"rhs_vdv_marksman",
		"rhs_vdv_machinegunner",
		"rhs_vdv_machinegunner_assistant",
		"rhs_vdv_at",
		"rhs_vdv_strelok_rpg_assist",
		"rhs_vdv_grenadier",
		"rhs_vdv_engineer",
		"rhs_vdv_aa"
	];
    _Unit_Pool_V = [	// BTR here, 1 rocket = BTR dead, so IMO they fit here
		"rhs_tigr_ffv_vdv",
		"RHS_Ural_Open_VDV_01",
		"RHS_Ural_VDV_01",
		"rhs_btr80_vdv",
		"rhs_btr80a_vdv"
	]; 
    _Unit_Pool_T = [
		"rhs_bmd1p",
		"rhs_bmd2m",
		"rhs_bmd4m_vdv",
		"rhs_bmd4ma_vdv",
		"rhs_bmp1p_vdv",
		"rhs_bmp2k_vdv",
		"rhs_sprut_vdv"
	];
    _Unit_Pool_A = [
		"RHS_Mi8MTV3_vdv",
		"RHS_Mi8MTV3_vdv",
		"RHS_Mi8MTV3_UPK23_vdv",
		"RHS_Mi24V_UPK23_vdv"
	];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR RHS
// USMC (woodland)
  case 3:
  {
    _Unit_Pool_S = [
		"rhsusf_usmc_marpat_wd_combatcrewman", "rhsusf_usmc_marpat_wd_helipilot", "rhsusf_usmc_marpat_wd_teamleader",
		"rhsusf_usmc_marpat_wd_riflemanat",
		"rhsusf_usmc_marpat_wd_rifleman",
		"rhsusf_usmc_marpat_wd_marksman",
		"rhsusf_usmc_marpat_wd_machinegunner_ass",
		"rhsusf_usmc_marpat_wd_machinegunner",
		"rhsusf_usmc_marpat_wd_autorifleman_m249",
		"rhsusf_usmc_marpat_wd_autorifleman_m249_ass",
		"rhsusf_usmc_marpat_wd_stinger"
	];
    _Unit_Pool_V = [	// only armed vehicles
		"rhsusf_m1025_w_s_m2_10",
		"rhsusf_m1025_w_s_mk19_10",
		"rhsusf_rg33_m2_usmc_wd"
	]; 
    _Unit_Pool_T = [
		"rhsusf_m1a1fep_wd",
		"rhsusf_m1a1fep_od"
	];
    _Unit_Pool_A = [	// added A3 ittlebird, it is quite balanced and nice to fight aginst
		"RHS_AH1Z_wd",
		"RHS_UH1Y_FFAR",
		"RHS_UH1Y",
		"B_Heli_Light_01_armed_F"
	]; 
  };
//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray
