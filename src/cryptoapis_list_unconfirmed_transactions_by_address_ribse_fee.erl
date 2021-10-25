-module(cryptoapis_list_unconfirmed_transactions_by_address_ribse_fee).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_transactions_by_address_ribse_fee/0]).

-type cryptoapis_list_unconfirmed_transactions_by_address_ribse_fee() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
