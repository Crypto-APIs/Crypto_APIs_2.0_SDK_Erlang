-module(cryptoapis_get_wallet_transaction_details_by_transaction_idri_recipients).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idri_recipients/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
