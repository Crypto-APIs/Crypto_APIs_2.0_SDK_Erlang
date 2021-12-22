-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_e400).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_e400/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_e400() ::
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
