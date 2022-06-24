-module(cryptoapis_get_transaction_details_by_transaction_idri_recipients_inner).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idri_recipients_inner/0]).

-type cryptoapis_get_transaction_details_by_transaction_idri_recipients_inner() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
