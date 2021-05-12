-module(cryptoapis_mined_transaction_response_data).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_response_data/0]).

-type cryptoapis_mined_transaction_response_data() ::
    #{ 'item' := cryptoapis_mined_transaction_response_item:cryptoapis_mined_transaction_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
