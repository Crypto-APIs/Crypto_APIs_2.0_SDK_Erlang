-module(cryptoapis_list_all_unconfirmed_transactions_ribse_fee).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribse_fee/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribse_fee() ::
    #{ 'amount' := binary()
     }.

encode(#{ 'amount' := Amount
        }) ->
    #{ 'amount' => Amount
     }.
