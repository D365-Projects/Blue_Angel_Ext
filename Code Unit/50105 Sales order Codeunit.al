// codeunit 50100 "SalesLineToInvoiceLine"
// {

//     [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterCopyFromSalesLine', '', false, false)]
//     local procedure OnAfterCopyFromSalesLine(var SalesLine: Record "Sales Line"; var SalesInvLine: Record "Sales Invoice Line")
//     begin
//         // Copy SKU
//         SalesInvLine."SKU" := SalesLine."SKU";

//         // Copy UPC
//         SalesInvLine.UPC_SG := SalesLine."UPC_SG";

//         // Copy Shipping Cost
//         SalesInvLine."Shipping Cost" := SalesLine."Shipping Cost";
//     end;
// }
