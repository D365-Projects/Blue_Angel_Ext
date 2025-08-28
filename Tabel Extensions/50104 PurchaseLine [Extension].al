tableextension 50104 PurchaseLineExtension extends "Purchase Line"
{
    fields
    {


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