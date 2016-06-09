//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de 
//    For IF44 by Alan
//////////////////////////////
private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// REDFOR (A3)
  case 0:
  {
    _Unit_Pool_S = ["LIB_SOV_tank_captain","LIB_SOV_tank_lieutenant","LIB_SOV_sergeant","LIB_SOV_smgunner","LIB_SOV_mgunner","LIB_SOV_medic","LIB_SOV_AT_grenadier","LIB_SOV_LC_rifleman","LIB_SOV_rifleman","LIB_SOV_tank_overall_lieutenant","LIB_SOV_tank_sergeant","LIB_SOV_tank_overall_sergeant","LIB_SOV_tank_overall_captain","LIB_sov_tank_crew"];
    _Unit_Pool_V = ["lib_zis5v","lib_us6_bm13","Lib_Willys_MB","LIB_SOV_M3_Halftrack","LIB_Scout_m3","lib_zis5v_med"];
    _Unit_Pool_T = ["LIB_JS2_43","LIB_T34_76","LIB_SU85","LIB_T34_85","LIB_M4A2_SOV"];
	_Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR (A3)
  case 1:
  {
    _Unit_Pool_S = ["LIB_GER_tank_unterofficer","LIB_GER_tank_crew","LIB_GER_tank_lieutenant","LIB_GER_scout_unterofficer","LIB_GER_unterofficer","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_scout_ober_rifleman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_AT_grenadier","LIB_GER_scout_ober_rifleman","LIB_GER_scout_mgunner","LIB_GER_scout_sniper","LIB_GER_scout_ober_rifleman","LIB_GER_scout_smgunner","LIB_GER_scout_rifleman","LIB_GER_spg_lieutenant","LIB_GER_spg_unterofficer","LIB_GER_spg_crew"];
    _Unit_Pool_V = ["LIB_kfz1","LIB_opelblitz_open_y_camo","LIB_opelblitz_tent_y_camo","LIB_SdKfz_7_base","Lib_sdkfz251","LIB_SdKfz_7","LIB_SdKfz_7_AA","LIB_opelblitz_ambulance","lib_opelblitz_ammo","LIB_opelblitz_fuel","LIB_opelblitz_parm"];
    _Unit_Pool_T = ["LIB_PzKpfwVI_B_camo","LIB_PzKpfwIV_H","LIB_PzKpfwV","LIB_PzKpfwVI_B","LIB_PzKpfwVI_E","LIB_StuG_III_G","LIB_StuG_III_G_WS"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = [];
    _Unit_Pool_V = [];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = [];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
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