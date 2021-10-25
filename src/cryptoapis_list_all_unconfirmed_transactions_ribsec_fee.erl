-module(cryptoapis_list_all_unconfirmed_transactions_ribsec_fee).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribsec_fee/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribsec_fee() ::
    #{ 'amount' := binary()
     }.

encode(#{ 'amount' := Amount
        }) ->
    #{ 'amount' => Amount
     }.
