tableextension 50103 SalesLineExtension extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_lrec: Record Item;
            begin
                Item_lrec.SetRange("No.", rec."No.");
                if Item_lrec.Findfirst() then
                    Rec.SKU := Item_lrec."Vendor Item No.";
            end;
        }
        field(50101; "SKU"; Text[50])
        {
            Caption = 'SKU';
            DataClassification = ToBeClassified;
        }
        field(50102; "Service Period From"; Date)
        {
            Caption = 'Service Period From';
            DataClassification = ToBeClassified;
        }
        field(50103; "Service Period To"; Date)
        {
            Caption = 'Service Period To';
            DataClassification = ToBeClassified;
        }
        field(50104; "Sales Margin_SG"; Decimal)
        {
            Caption = 'Sales Margin';
            DataClassification = ToBeClassified;
        }
        field(50105; "Net Price_SG"; Decimal)
        {
            Caption = 'Net Price';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {

    }

    fieldgroups
    {

    }

    var
        myInt: Integer;
}