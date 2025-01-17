loot.tables.editTable("loot_carpenter_test:foo", function(table, context) {
	val bar = table.getPool("bar");
	//identicalItems
	bar.addItemEntry(<minecraft:dye> * 2, 5, null);
	bar.addItemEntry(<minecraft:dye>, 2, null);
	//customNamedItemEntry
	bar.addItemEntry(<minecraft:dye> * 2, 5, "corge_naming");
	bar.addItemEntry(<minecraft:dye>, 2, null);
	//identicalTableReferences
	bar.addLootTableEntry("loot_carpenter_test:bar", 5, null);
	bar.addLootTableEntry("loot_carpenter_test:bar", 2, null);
	//customNamedTableReference
	bar.addLootTableEntry("loot_carpenter_test:bar", 5, "grault_naming");
	bar.addLootTableEntry("loot_carpenter_test:bar", 2, null);
	//multipleEmpties
	bar.addEmptyEntry(5, null);
	bar.addEmptyEntry(2, null);
	//customNamedEmpty
	bar.addEmptyEntry(5, "garply_naming");
	bar.addEmptyEntry(2, null);
});