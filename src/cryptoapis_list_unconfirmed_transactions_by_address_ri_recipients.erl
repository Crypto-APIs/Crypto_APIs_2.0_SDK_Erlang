-module(cryptoapis_list_unconfirmed_transactions_by_address_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_transactions_by_address_ri_recipients/0]).

-type cryptoapis_list_unconfirmed_transactions_by_address_ri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
