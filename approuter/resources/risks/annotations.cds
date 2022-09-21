using RiskService as service from '../../srv/risk-service';

// Risk List Report Page
annotate RiskService.Risks with @(UI : {
    HeaderInfo      : {
        TypeName       : 'Risk',
        TypeNamePlural : 'Risks',
        Title          : {
            $Type : 'UI.DataField',
            Value : title
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : descr
        }
    },
    SelectionFields : [prio, title],
    Identification  : [{Value : title}],
    // Define the table columns
    LineItem        : [
        {Value : title},
        {Value : miti_ID},
        {Value : owner},
        {Value : bp_BusinessPartner},        
        {
            Value       : prio,
            Criticality : criticality
        },
        {
            Value       : impact,
            Criticality : criticality
        },
    ],
});


// Risk Object Page
annotate RiskService.Risks with @(UI : {
    Facets           : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Main',
            Target : '@UI.FieldGroup#Main',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Main2',
            Target : '@UI.FieldGroup#Main2',
        }
    ],
    FieldGroup #Main : {
        Data : [
            {Value : miti_ID},
            {Value : owner},
            {
                Value       : prio,
                Criticality : criticality
            },
            {
                Value       : impact,
                Criticality : criticality
            },
            { Value : bp_BusinessPartner }
        ]
    },
    FieldGroup #Main2 : {
        Data : [
            {Value : miti_ID},
            {Value : owner},
            {
                Value       : prio,
                Criticality : criticality
            },
            {
                Value       : impact,
                Criticality : criticality
            }
        ]
    },
});
