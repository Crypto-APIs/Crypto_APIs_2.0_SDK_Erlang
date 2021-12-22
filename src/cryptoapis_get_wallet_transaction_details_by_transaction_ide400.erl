-module(cryptoapis_get_wallet_transaction_details_by_transaction_ide400).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_ide400/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_ide400() ::
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
