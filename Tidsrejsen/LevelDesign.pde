void loadLevel2 () {
  ArrayList<PVector> level2pos = new ArrayList<PVector>();
  ArrayList<PVector> level2size = new ArrayList<PVector>();
  
  level2pos.add(new PVector(242,606));
  level2pos.add(new PVector(88,556));
  level2pos.add(new PVector(92,524));
  level2pos.add(new PVector(2,490));
  level2pos.add(new PVector(260,474));
  level2pos.add(new PVector(400,406));
  level2pos.add(new PVector(608,430));
  level2pos.add(new PVector(710,472));
  level2pos.add(new PVector(822,516));
  level2pos.add(new PVector(1036,786));
  level2pos.add(new PVector(1128,566));
  level2pos.add(new PVector(536,330));
  level2pos.add(new PVector(800,360));
  level2pos.add(new PVector(956,284));
  level2pos.add(new PVector(712,258));
  level2pos.add(new PVector(500,178));
  level2pos.add(new PVector(282,130));
  level2pos.add(new PVector(4,104));
  
  level2size.add(new PVector(130,26));
  level2size.add(new PVector(138,22));
  level2size.add(new PVector(86,22));
  level2size.add(new PVector(144,22));
  level2size.add(new PVector(120,24));
  level2size.add(new PVector(114,30));
  level2size.add(new PVector(178,28));
  level2size.add(new PVector(156,22));
  level2size.add(new PVector(200,24));
  level2size.add(new PVector(102,22));
  level2size.add(new PVector(234,22));
  level2size.add(new PVector(142,24));
  level2size.add(new PVector(94,26));
  level2size.add(new PVector(182,30));
  level2size.add(new PVector(154,22));
  level2size.add(new PVector(182,28));
  level2size.add(new PVector(168,26));
  level2size.add(new PVector(258,26));
  
  for (int i = 0; i < level2pos.size(); i++) {
    new Wall(level2pos.get(i), level2size.get(i));
  }
}

void loadLevel3 () {
  ArrayList<PVector> level3pos = new ArrayList<PVector>();
  ArrayList<PVector> level3size = new ArrayList<PVector>();

  level3pos.add(new PVector(474,658));
  level3pos.add(new PVector(336,590));
  level3pos.add(new PVector(308,540));
  level3pos.add(new PVector(180,480));
  level3pos.add(new PVector(202,436));
  level3pos.add(new PVector(86,394));
  level3pos.add(new PVector(286,226));
  level3pos.add(new PVector(420,396));
  level3pos.add(new PVector(484,282));
  level3pos.add(new PVector(614,222));
  level3pos.add(new PVector(736,162));
  level3pos.add(new PVector(1202,180));
  level3pos.add(new PVector(1092,234));
  level3pos.add(new PVector(892,264));
  level3pos.add(new PVector(738,326));
  level3pos.add(new PVector(866,396));
  level3pos.add(new PVector(998,458));
  level3pos.add(new PVector(1134,526));
  level3pos.add(new PVector(1016,574));
  level3pos.add(new PVector(882,612));
  level3pos.add(new PVector(760,650));
    
  level3size.add(new PVector(82,16));
  level3size.add(new PVector(126,24));
  level3size.add(new PVector(88,20));
  level3size.add(new PVector(160,24));
  level3size.add(new PVector(54,22));
  level3size.add(new PVector(132,20));
  level3size.add(new PVector(110,18));
  level3size.add(new PVector(116,16));
  level3size.add(new PVector(146,22));
  level3size.add(new PVector(144,16));
  level3size.add(new PVector(330,16));
  level3size.add(new PVector(110,10));
  level3size.add(new PVector(108,16));
  level3size.add(new PVector(150,22));
  level3size.add(new PVector(94,26));
  level3size.add(new PVector(88,18));
  level3size.add(new PVector(102,16));
  level3size.add(new PVector(122,24));
  level3size.add(new PVector(92,18));
  level3size.add(new PVector(92,18));
  level3size.add(new PVector(88,18));
  
  for (int i = 0; i < level3pos.size(); i++) {
    new Wall(level3pos.get(i), level3size.get(i));
  }
}
