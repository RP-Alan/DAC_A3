//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de
//    for IF44 by Alan
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:
	{
		_campBasic     = ["FlagCarrierSU",["FirePlace_burning_f",15,10,0],["LIB_Static_zis6_radar",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["LIB_BasicAmmunitionBox_SU",20,2,0],["LIB_BasicWeaponsBox_SU",20,0,0],["LIB_WeaponsBox_Big_SU",20,-2,0],["LIB_Lone_Big_Box",20,-4,0]];
		_campStatic    = [["LIB_BM37",-7,25,0,"LIB_SOV_smgunner"],["LIB_BM37",25,25,0,"LIB_SOV_smgunner"],["LIB_BM37",25,-20,180,"LIB_SOV_smgunner"],["LIB_BM37",-7,-20,180,"LIB_SOV_smgunner"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["FlagCarrierGER",["FirePlace_burning_f",15,10,0],["LIB_Static_opelblitz_radio",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["LIB_BasicAmmunitionBox_GER",20,2,0],["LIB_BasicWeaponsBox_GER",20,0,0],["LIB_WeaponsBox_Big_GER",20,-2,0],["LIB_WeaponsBox_Big_GER",20,-4,0]];
		_campStatic    = [["LIB_GrWr34",-7,25,0,"LIB_GER_unterofficer"],["LIB_GrWr34",25,25,0,"LIB_GER_unterofficer"],["LIB_GrWr34",25,-20,180,"LIB_GER_unterofficer"],["LIB_GrWr34",-7,-20,180,"LIB_GER_unterofficer"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2:
	{
		_campBasic     = ["NULL"];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array