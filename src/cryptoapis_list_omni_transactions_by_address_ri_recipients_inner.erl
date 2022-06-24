-module(cryptoapis_list_omni_transactions_by_address_ri_recipients_inner).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_address_ri_recipients_inner/0]).

-type cryptoapis_list_omni_transactions_by_address_ri_recipients_inner() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
