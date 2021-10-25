-module(cryptoapis_list_all_unconfirmed_transactions_ribsec_gas_price).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribsec_gas_price/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribsec_gas_price() ::
    #{ 'amount' := binary()
     }.

encode(#{ 'amount' := Amount
        }) ->
    #{ 'amount' => Amount
     }.
