package daomephsta.loot_carpenter.test.support.assertion.loot.entry;

import daomephsta.loot_carpenter.test.support.mixin.entry.TestLootEntryTableAccessors;
import net.minecraft.util.ResourceLocation;
import net.minecraft.world.storage.loot.LootEntryTable;


public class LootEntryTableAssert extends AbstractLootEntryAssert<LootEntryTableAssert, LootEntryTable>
{
    public LootEntryTableAssert(LootEntryTable actual)
    {
        super(actual, LootEntryTableAssert.class);
    }

    public LootEntryTableAssert spawnsFromTable(String expectedTable)
    {
        isNotNull();

        ResourceLocation actualTable = ((TestLootEntryTableAccessors) actual).getTable();
        if (!actualTable.equals(new ResourceLocation(expectedTable)))
            failWithMessage("Expected <%s>, was <%s>", expectedTable, actualTable);
        return this;
    }
}
