-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_e409).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_e409/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_e409() ::
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
