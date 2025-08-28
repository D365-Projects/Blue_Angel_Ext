pageextension 50100 Salesquotesubfomr extends "Sales Quote Subform"
{
    layout
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_lrec: Record Item;
            begin
                Item_lrec.SetRange("No.", rec."No.");
                if Item_lrec.Find() then
                    rec.SKU := Item_lrec."Vendor Item No.";
            end;
        }
        addafter("No.")
        {

            field(SKU; Rec.SKU)
            {
                ApplicationArea = All;
                Caption = 'SKU';
                ToolTip = 'Stock Keeping Unit';
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}