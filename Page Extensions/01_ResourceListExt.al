pageextension 123456701 CSD_ResourceListExt extends "Resource List"
{
    layout
    {
        // CSD Ressourlelist 
        modify(Type)
        {
            Visible = showType;
        }
        addafter("Type")
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Maximum Participants"; "CSD_Maximum Participants")
            {
                Visible = showMaxField;
            }


        }
    }


    var
        [InDataSet]
        showMaxField: Boolean;
        showType: Boolean;

    trigger OnOpenPage();

    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxfield := (GetFilter(Type) =
    format(Type::Machine));
        FilterGroup(0);

    end;
}