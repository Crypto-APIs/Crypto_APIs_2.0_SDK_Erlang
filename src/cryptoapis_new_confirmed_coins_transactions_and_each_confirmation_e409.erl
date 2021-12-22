-module(cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_e409).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_e409/0]).

-type cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_e409() ::
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
