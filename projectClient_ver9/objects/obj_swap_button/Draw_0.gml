draw_self();
var tmpName="";
switch(buttonType){
	case "ship":
		tmpName="飞船";
		break;
	case "weapon":
		tmpName="武器";
		break;
	case "engine":
		tmpName="引擎";
		break;
	case "alt":
		tmpName="工程";
		break;
	case "device":
		tmpName="装置";
		break;
}
draw_text_transformed_color(x+20,y+10,tmpName,2,2,0,c_white,c_white,c_white,c_white,1);