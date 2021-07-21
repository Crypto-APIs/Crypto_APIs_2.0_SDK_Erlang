-module(cryptoapis_create_coins_transaction_request_from_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_address_rb_data_item/0]).

-type cryptoapis_create_coins_transaction_request_from_address_rb_data_item() ::
    #{ 'amount' := binary(),
       'feePriority' := binary(),
       'toAddress' := binary()
     }.

encode(#{ 'amount' := Amount,
          'feePriority' := FeePriority,
          'toAddress' := ToAddress
        }) ->
    #{ 'amount' => Amount,
       'feePriority' => FeePriority,
       'toAddress' => ToAddress
     }.
