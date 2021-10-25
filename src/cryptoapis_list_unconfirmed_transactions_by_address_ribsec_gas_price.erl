-module(cryptoapis_list_unconfirmed_transactions_by_address_ribsec_gas_price).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_transactions_by_address_ribsec_gas_price/0]).

-type cryptoapis_list_unconfirmed_transactions_by_address_ribsec_gas_price() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
