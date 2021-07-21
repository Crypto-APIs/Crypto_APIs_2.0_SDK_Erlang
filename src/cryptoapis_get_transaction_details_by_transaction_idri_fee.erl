-module(cryptoapis_get_transaction_details_by_transaction_idri_fee).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idri_fee/0]).

-type cryptoapis_get_transaction_details_by_transaction_idri_fee() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
