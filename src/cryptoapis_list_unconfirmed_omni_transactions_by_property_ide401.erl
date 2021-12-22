-module(cryptoapis_list_unconfirmed_omni_transactions_by_property_ide401).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_omni_transactions_by_property_ide401/0]).

-type cryptoapis_list_unconfirmed_omni_transactions_by_property_ide401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
