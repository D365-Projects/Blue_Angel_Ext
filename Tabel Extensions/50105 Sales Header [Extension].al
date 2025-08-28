tableextension 50105 SalesHederExt extends "Sales Header"
{
    fields
    {
        field(50100; "Quote Status"; Option)
        {
            Caption = 'Quote Status';
            DataClassification = ToBeClassified;
            OptionMembers = "Under approval by the Manager","Under approval by the customer","On Hold","Draft","Approved by Customer","Approved by Manager","Decline by The Customer","Decline by The Manager","Waiting for Payment";
            OptionCaption = 'Under approval by the Manager,Under approval by the customer,On Hold,Draft,Approved by Customer,Approved by Manager,Decline by The Customer,Decline by The Manager,Waiting for Payment';
        }
        field(50101; "Follow Up Date"; Date)
        {
            Caption = 'Follow up Date';
            DataClassification = ToBeClassified;
        }
        field(50102; "Project"; Boolean)
        {
            Caption = 'Project';
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            // begin
            //     Rec.Device := false;
            //     Rec."T&M" := false;
            // end;

        }
        field(50103; "Device"; Boolean)
        {
            Caption = 'Device';
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            // begin
            //     Rec.Project := false;
            //     Rec."T&M" := false;

            // end;
        }
        field(50104; "T&M"; Boolean)
        {
            Caption = 'T&M';
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            // begin
            //     Rec.Project := false;
            //     Rec.Device := false;
            // end;
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