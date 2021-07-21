-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_ri_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
