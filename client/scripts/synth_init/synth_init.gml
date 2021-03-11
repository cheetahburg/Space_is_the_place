function synth_init() {
	//final products
	synth[goods.clothes]=array_init(0,goods.NaOH,1,goods.rubber,1);
	synth[goods.daily_suppies]=array_init(0,goods.rubber,1,goods.plastic,1);
	synth[goods.energy]=array_init(0,goods.oil,1); 

	//mines
	synth[goods.oil]=array_init(-1);
	synth[goods.silicon]=array_init(-1);
	synth[goods.rubber]=array_init(-1);
	synth[goods.water]=array_init(-1);
	synth[goods.salt]=array_init(-1);
	synth[goods.copper]=array_init(-1);
	synth[goods.sulfur]=array_init(-1);
	synth[goods.rare_metal]=array_init(-1);

	//middle
	synth[goods.NaOH]=array_init(0,goods.water,1,goods.salt,1);
	synth[goods.Cl2]=array_init(0,goods.water,1,goods.salt,1);
	synth[goods.plastic]=array_init(0,goods.Cl2,1,goods.CH,1);
	synth[goods.transistor]=array_init(0,goods.rare_metal,1,goods.silicon,1);
	synth[goods.refined_copper]=array_init(0,goods.copper,1);
	synth[goods.steel]=array_init(0,goods.iron,1,goods.energy,1);
	synth[goods.H2SO4]=array_init(0,goods.water,1,goods.sulfur,1);


}
