tableextension 50110 "Purchase Line Ext" extends "Purchase Line"
{
    fields
    {
        modify("Direct Unit Cost")
        {
            trigger OnAfterValidate()
            begin
                Rec.UpdateSalesCost(); // Call the standard procedure

            end;
        }
    }



}
