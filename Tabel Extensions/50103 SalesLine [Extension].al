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
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}