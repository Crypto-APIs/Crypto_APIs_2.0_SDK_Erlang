-module(cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item() ::
    #{ 'destinations' := list(),
       'feePriority' := binary()
     }.

encode(#{ 'destinations' := Destinations,
          'feePriority' := FeePriority
        }) ->
    #{ 'destinations' => Destinations,
       'feePriority' => FeePriority
     }.
