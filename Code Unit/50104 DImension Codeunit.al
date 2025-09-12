codeunit 50104 "Dimension Handler"
{

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterValidateEvent', 'Name', false, false)]
    local procedure OnAfterValidateCustomerName(var Rec: Record Customer; xRec: Record Customer)
    var
        CustomerDimHandler: Codeunit "Dimension Handler";
    begin
        CustomerDimHandler.CreateAndAssignOrUpdateDimension(Rec, xRec);
    end;

    procedure CreateAndAssignOrUpdateDimension(var Customer: Record Customer; xCustomer: Record Customer)
    var
        DimValue: Record "Dimension Value";
        DimMgt: Codeunit "DimensionManagement";
        GLSetup: Record "General Ledger Setup";
        def_Dimension: Record "Default Dimension";
        GlobalDimCode: Code[20];
        IsNew: Boolean;
    begin
        GLSetup.Get();
        GlobalDimCode := GLSetup."Global Dimension 1 Code";

        if GlobalDimCode = '' then
            Error('Global Dimension 1 is not set up in General Ledger Setup.');

        if Customer."No." <> xCustomer."No." then begin
            if DimValue.Get(GlobalDimCode, xCustomer."No.") then begin
                DimValue.Code := Customer."No.";
                DimValue.Name := Customer.Name;
                DimValue.Modify(true);
                def_Dimension.SetRange("Table ID", Database::Customer);
                def_Dimension.SetRange("No.", Customer."No.");
                def_Dimension.SetRange("Dimension Code", GlobalDimCode);
                if def_Dimension.FindFirst() then begin
                    def_Dimension."Value Posting" := def_Dimension."Value Posting"::"Same Code";
                    def_Dimension.Modify(true);
                end;

            end;
        end else begin
            if not DimValue.Get(GlobalDimCode, Customer."No.") then begin
                DimValue.Init();
                DimValue."Dimension Code" := GlobalDimCode;
                DimValue.Code := Customer."No.";
                DimValue.Name := Customer.Name;
                DimValue.Insert(true);


            end else begin
                if DimValue.Name <> Customer.Name then begin
                    DimValue.Name := Customer.Name;
                    DimValue.Modify(true);
                end;
            end;
        end;
        Customer.Validate("Global Dimension 1 Code", Customer."No.");
        def_Dimension.SetRange("Table ID", Database::Customer);
        def_Dimension.SetRange("No.", Customer."No.");
        def_Dimension.SetRange("Dimension Code", GlobalDimCode);
        if def_Dimension.FindFirst() then begin
            def_Dimension."Value Posting" := def_Dimension."Value Posting"::"Same Code";
            def_Dimension.Modify(true);
        end;
        Customer.Modify(true);
        DimMgt.SaveDefaultDim(
            Database::Customer,
            Customer."No.",
            1,
            Customer."No."
        );
    end;


    //Project Dimension Handler
    [EventSubscriber(ObjectType::Table, Database::Job, 'OnAfterValidateEvent', 'Description', false, false)]
    local procedure OnAfterValidateJob(var Rec: Record Job; xRec: Record Job)
    var
        CustomerDimHandler: Codeunit "Dimension Handler";
    begin
        CustomerDimHandler.CreateAndAssignOrUpdateDimension(Rec, xRec);
    end;

    procedure CreateAndAssignOrUpdateDimension(var Job: Record Job; xJob: Record Job)
    var
        DimValue: Record "Dimension Value";
        DimMgt: Codeunit DimensionManagement;
        GLSetup: Record "General Ledger Setup";
        def_Dimension: Record "Default Dimension";
        GlobalDimCode: Code[20];
begin
        GLSetup.Get();
        GlobalDimCode := GLSetup."Shortcut Dimension 6 Code";

        if GlobalDimCode = '' then
            Error('Shortcut Dimension 6 is not set up in General Ledger Setup.');

        if Job."No." <> xJob."No." then begin
            if DimValue.Get(GlobalDimCode, xJob."No.") then begin
                DimValue.Code := Job."No.";
                DimValue.Name := Job.Description;
                DimValue.Modify(true);
            end;
        end else begin
            if not DimValue.Get(GlobalDimCode, Job."No.") then begin
                DimValue.Init();
                DimValue."Dimension Code" := GlobalDimCode;
                DimValue.Code := Job."No.";
                DimValue.Name := Job.Description;
                DimValue.Insert(true);

                def_Dimension.SetRange("Table ID", Database::Job);
                def_Dimension.SetRange("No.", Job."No.");
                def_Dimension.SetRange("Dimension Code", GlobalDimCode);
                if def_Dimension.FindFirst() then begin
                    def_Dimension."Value Posting" := def_Dimension."Value Posting"::"Same Code";
                    def_Dimension.Modify(true);
                end;
            end else begin
                if DimValue.Name <> Job.Description then begin
                    DimValue.Name := Job.Description;
                    DimValue.Modify(true);
                end;
            end;
        end;
        Job.Validate("SG ShortcutDim6Code", Job."No.");
        Job."SG ShortcutDim6Code" := Job."No.";
        Job.Modify(true);
        def_Dimension.SetRange("Table ID", Database::Job);
        def_Dimension.SetRange("No.", Job."No.");
        def_Dimension.SetRange("Dimension Code", GlobalDimCode);
        if def_Dimension.FindFirst() then begin
            def_Dimension."Value Posting" := def_Dimension."Value Posting"::"Same Code";
            def_Dimension.Modify(true);
        end;

        DimMgt.SaveDefaultDim(
            Database::Job,
            Job."No.",
            6,
            Job."No."
        );


    end;


}



// codeunit 50104 "Customer Dimension Handler"
// {
//     procedure CreateAndAssignDimension(Customer: Record Customer)
//     var
//         DimValue: Record "Dimension Value";
//         DimMgt: Codeunit "DimensionManagement";
//         GLSetup: Record "General Ledger Setup";
//         DefaultDim: Record "Default Dimension";
//         GlobalDimFieldNo: Code[20];
//         GlobalDimCode: Code[20];
//     begin
//         GLSetup.Get();
//         GlobalDimCode := GLSetup."Global Dimension 1 Code";

//         if GlobalDimCode = '' then
//             Error('Global Dimension 1 is not set up in General Ledger Setup.');
//         if not DimValue.Get(GlobalDimCode, Customer."No.") then begin

//             DimValue.Init();
//             DimValue."Dimension Code" := GlobalDimCode;
//             DimValue.Code := Customer."No.";
//             DimValue.Name := Customer.Name;
//             DimValue.Insert(true); // Commit immediately to ensure availability
//             Customer.Validate("Global Dimension 1 Code", DimValue.Code);
//             Customer.Modify(true);

//         end;

//         DimMgt.SaveDefaultDim(
//             Database::Customer,
//             Customer."No.",
//             1,
//             Customer."No."
//         );


//         Message('Dimension "%1" with value "%2" assigned to Customer "%3".', GlobalDimCode, Customer."No.", Customer.Name);
//     end;
// }
