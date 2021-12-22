-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx_value).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx_value/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsx_value() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
